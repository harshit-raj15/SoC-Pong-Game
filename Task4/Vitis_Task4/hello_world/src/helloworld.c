#include <stdio.h>
#include <string.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xaxidma.h"
#include "xil_cache.h"
#include "xgpio.h"
#include "sleep.h"

#include "audio_tables.h"    // Contains all the audio tones

/*––––– Hardware Definitions –––––*/
#ifndef XPAR_XAXIDMA_0_DEVICE_ID
  #define XPAR_XAXIDMA_0_DEVICE_ID 0
#endif
#ifndef XPAR_XGPIO_0_DEVICE_ID
  #define XPAR_XGPIO_0_DEVICE_ID  0
#endif

#define DMA_DEVICE_ID       XPAR_XAXIDMA_0_DEVICE_ID
#define GPIO_BTN_DEVICE_ID  XPAR_XGPIO_0_DEVICE_ID
#define GPIO_BTN_CHANNEL    1

#define PONG_BASEADDR       XPAR_MYIP_PONG2_0_BASEADDR
#define SCORE_REG_OFFSET    4

// BRAM base for DMA (must match your address editor)
#define AUDIO_BRAM_BASE     XPAR_AXI_BRAM_CTRL_1_BASEADDR

/*––––– Globals –––––*/
static XAxiDma AxiDma;
static XGpio   GpioBtn;
int P1_score = 0, P2_score = 0;

/*––––– Prototypes –––––*/
static int  InitAll(void);
static void LoadAudioToBRAM(void);
static void CheckScoreFlags(void);
static void PlayViaDMA(const uint8_t *buf, int len);
static void Play440(void), Play660(void), PlayMary(void);

/*––––– Main –––––*/
int main(void) {
    init_platform();
    xil_printf("\r\n--- PONG + Audio via AXI-DMA ---\r\n\n");

    if (InitAll() != XST_SUCCESS) {
        xil_printf("FATAL: initialization failed!\r\n");
        cleanup_platform();
        return XST_FAILURE;
    }

    // Load all three tones into BRAM
    LoadAudioToBRAM();

    xil_printf("\nStarting Game!!\r\n\n");
    sleep(1);


    // Kick off PONG
    const u32 START = 0x10;
    Xil_Out32(PONG_BASEADDR, START);

    while (1) {
        // Read paddle input
        u32 btn = XGpio_DiscreteRead(&GpioBtn, GPIO_BTN_CHANNEL) & 0xF;
        Xil_Out32(PONG_BASEADDR, START | btn);

        CheckScoreFlags();

        // Win‐condition: first to 7
        if (P1_score == 7 || P2_score == 7) {
            xil_printf("%s Wins!\r\n", (P1_score==7)?"Player 1":"Player 2");

            // Pause game
            Xil_Out32(PONG_BASEADDR, 0);
            usleep(10000);

            // Mary melody
            PlayMary();
            usleep(5000000);

            // Reset scores
            P1_score = P2_score = 0;

            // Restart game
            Xil_Out32(PONG_BASEADDR, START);
        }

        usleep(100000);  // 10 Hz loop
    }

    cleanup_platform();
    return 0;
}

/*––––– Initialization: GPIO + DMA + Caches –––––*/
static int InitAll(void) {
    int status;

    // Enable caches for DMA coherency
    Xil_ICacheDisable();  Xil_DCacheDisable();
    Xil_ICacheEnable();   Xil_DCacheEnable();

    // Button GPIO
    status = XGpio_Initialize(&GpioBtn, GPIO_BTN_DEVICE_ID);
    if (status != XST_SUCCESS) return XST_FAILURE;
    XGpio_SetDataDirection(&GpioBtn, GPIO_BTN_CHANNEL, 0xF);

    // AXI-DMA (MM2S only)
    XAxiDma_Config *cfg = XAxiDma_LookupConfig(DMA_DEVICE_ID);
    if (!cfg) {
        xil_printf("ERROR: no DMA config for ID %d\r\n", DMA_DEVICE_ID);
        return XST_FAILURE;
    }
    status = XAxiDma_CfgInitialize(&AxiDma, cfg);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: DMA init failed\r\n");
        return XST_FAILURE;
    }
    XAxiDma_IntrDisable(&AxiDma, XAXIDMA_IRQ_ALL_MASK,
                        XAXIDMA_DMA_TO_DEVICE);
    xil_printf("AXI-DMA Initialized Checked\r\n\n");

    return XST_SUCCESS;
}

/*––––– Load all three tone arrays into BRAM and flush cache –––––*/
static void LoadAudioToBRAM(void) {
    uint8_t *bram = (uint8_t *)AUDIO_BRAM_BASE;
    size_t off = 0;

    xil_printf("Loading Audio to BRAM @ 0x%08x\r\n", (unsigned)AUDIO_BRAM_BASE);

    xil_printf("Loading Paddle Tone (%d bytes)\r\n", TONE_PADDLE_LEN);
    memcpy(bram + off, tone_paddle, TONE_PADDLE_LEN);
    off += TONE_PADDLE_LEN;

    xil_printf("Loading Score Tone (%d bytes)\r\n", TONE_SCORE_LEN);
    memcpy(bram + off, tone_score, TONE_SCORE_LEN);
    off += TONE_SCORE_LEN;

    xil_printf("Loading Mary Melody (%d bytes)\r\n", TONE_MARY_LEN);
    memcpy(bram + off, tone_mary, TONE_MARY_LEN);
    off += TONE_MARY_LEN;

    xil_printf("Flushing %d bytes to D-cache\r\n", (int)off);
    Xil_DCacheFlushRange((UINTPTR)bram, off);
    xil_printf("Audio Loaded into BRAM\r\n");
}

/*––––– Check for bounce/score flags & play corresponding tones –––––*/
static void CheckScoreFlags(void) {
    static u32 last = 0;
    u32 flags = Xil_In32(PONG_BASEADDR + SCORE_REG_OFFSET);

    // Paddle bounce (bit 2) - 440 Hz
    if ((flags & 0x4) && !(last & 0x4)) {
        xil_printf("Paddle bounce\n");
        Play440();
    }
    // P1 scored (bit 0) - 660 Hz
    if ((flags & 0x1) && !(last & 0x1)) {
        xil_printf("P1 scored! %d\n", ++P1_score);
        Play660();
    }
    // P2 scored (bit 1) - 660 Hz
    if ((flags & 0x2) && !(last & 0x2)) {
        xil_printf("P2 scored! %d\n", ++P2_score);
        Play660();
    }

    last = flags;
}

/*––––– DMA to PWM transfer –––––*/
static void PlayViaDMA(const uint8_t *buf, int len) {
    xil_printf("\r\nDMA to PWM transfer started (%d bytes)", len);
    Xil_DCacheFlushRange((UINTPTR)buf, len);

    u32 timeout = 10000000;
    u32 status = XAxiDma_SimpleTransfer(&AxiDma,
                                        (UINTPTR)buf,
                                        len,
                                        XAXIDMA_DMA_TO_DEVICE);
    if (status != XST_SUCCESS) {
        xil_printf("ERROR: DMA start failed (%d)\n", status);
        return;
    }
    while (XAxiDma_Busy(&AxiDma, XAXIDMA_DMA_TO_DEVICE) && timeout--) { }
    if (!timeout) {
        xil_printf("ERROR: DMA timeout—check TLAST!\n");
    } else {
        xil_printf(" - Transfer Complete!\r\n");
    }
}

/*––––– Play helpers: 440 Hz, 660 Hz, Mary melody –––––*/
static void Play440(void) {
    PlayViaDMA((uint8_t *)AUDIO_BRAM_BASE +           0,
               TONE_PADDLE_LEN);
}
static void Play660(void) {
    PlayViaDMA((uint8_t *)AUDIO_BRAM_BASE + TONE_PADDLE_LEN,
               TONE_SCORE_LEN);
}
static void PlayMary(void) {
    PlayViaDMA((uint8_t *)AUDIO_BRAM_BASE + 
               TONE_PADDLE_LEN + TONE_SCORE_LEN,
               TONE_MARY_LEN);
}
