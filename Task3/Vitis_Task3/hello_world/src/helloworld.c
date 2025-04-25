#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"

#include "xparameters.h"
#include "xil_io.h"
#include "xgpio.h"
#include "sleep.h"

#include "audio_tables.h"  // Contains tone_paddle and tone_score arrays

/************************** Constant Definitions *****************************/
#define GPIO_ONE  XPAR_XGPIO_0_BASEADDR
#define PWM_GPIO_DEVICE_ID 0  // Audio output GPIO instance
#define PONG_BASEADDR XPAR_MYIP_PONG2_EDIT1_0_BASEADDR //score singals
#define SCORE_REG_OFFSET 4  // Offset for slv_reg1

/************************** Function Prototypes ******************************/
int SystemInit(void);
void play_audio(const uint8_t *buffer, int length);
void play_tone_440hz(void);
void play_tone_660hz(void);
void play_tone_mary(void);

/************************** Variable Definitions *****************************/
XGpio Gpio1;    // Paddle GPIO
XGpio GpioPWM;  // Audio PWM GPIO
int P1_score = 0;  // P1 score count
int P2_score = 0;  // P2 score count

void check_score_flags() {
    static u32 last_flags = 0;
    u32 score_flags = Xil_In32(PONG_BASEADDR + SCORE_REG_OFFSET);

    // Detect rising edge on bit 0 (P1 score)
    if ((score_flags & 0x1) && !(last_flags & 0x1)) {
        play_tone_660hz();
        P1_score++;
        xil_printf("Player 1 scored! %d\r\n", P1_score);
    }

    // Detect rising edge on bit 1 (P2 score)
    if ((score_flags & 0x2) && !(last_flags & 0x2)) {
        play_tone_660hz();
        P2_score++;
        xil_printf("Player 2 scored! %d\r\n", P2_score);
    }

    // Detect rising edge on bit 2 (Paddle bounce)
    if ((score_flags & 0x4) && !(last_flags & 0x4)) {
        xil_printf("Ball bounced off a paddle!\r\n");
        play_tone_440hz();
    }

    last_flags = score_flags;
}



int main()
{
    init_platform();

    int Status = XST_SUCCESS;
    Status = SystemInit();

    if (Status == XST_FAILURE)
    {
        print("System init failed\r\n");
        while (1);
    }

    print("Starting Game\r\n");
    sleep(1);

    // Initialize game state
    const u8 GAME_START = 0b10000;
    Status = Xil_SecureOut32(XPAR_MYIP_PONG2_EDIT1_0_BASEADDR + (4 * 0), GAME_START);

    if (Status == XST_FAILURE)
    {
        print("Address pong Write failed\r\n");
        while (1);
    }

    while (1) {
        // Read paddle position from buttons
        u32 paddle_data = XGpio_DiscreteRead(&Gpio1, 1);

        // Send paddle input to Pong IP
        Xil_Out32(XPAR_MYIP_PONG2_EDIT1_0_BASEADDR + (4 * 0), GAME_START | paddle_data);


        check_score_flags();

        if (P1_score == 7 || P2_score == 7) {
        // Print winner
            xil_printf(P1_score == 7 ? "Player 1 Wins!\r\n" : "Player 2 Wins!\r\n");

            // Assert reset to pause the game
            Xil_Out32(XPAR_MYIP_PONG2_EDIT1_0_BASEADDR + (4 * 0), 0x00);  // Clear Game Start
            usleep(10000);
            play_tone_mary();
            usleep(10000);


            P1_score = 0;
            P2_score = 0;

            const u8 GAME_START = 0b10000;
            Xil_Out32(XPAR_MYIP_PONG2_EDIT1_0_BASEADDR + (4 * 0), GAME_START);
    }
    
    usleep(100000);

    }

    print("Exited Error\r\n");
    cleanup_platform();
    return 0;
}

/************************** Initialize GPIOs ******************************/
int SystemInit(void)
{
    int Status = XST_SUCCESS;

    // Paddle input GPIO
    Status = XGpio_Initialize(&Gpio1, GPIO_ONE);
    if (Status != XST_SUCCESS) {
        xil_printf("Gpio1 Initialization Failed\r\n");
        return XST_FAILURE;
    }

    Status = XGpio_SelfTest(&Gpio1);
    if (Status != XST_SUCCESS) {
        xil_printf("Gpio1 self-test Failed\r\n");
        return XST_FAILURE;
    }

    // PWM Audio GPIO
    Status = XGpio_Initialize(&GpioPWM, PWM_GPIO_DEVICE_ID);
    if (Status != XST_SUCCESS) {
        xil_printf("GpioPWM Initialization Failed\r\n");
        return XST_FAILURE;
    }

    // Set audio GPIO (channel 2) as output
    XGpio_SetDataDirection(&GpioPWM, 2, 0x00);

    return Status;
}

/************************** Audio Functions ******************************/
void play_audio(const uint8_t *buffer, int length)
{
    for (int i = 0; i < length; ++i) {
        XGpio_DiscreteWrite(&GpioPWM, 2, buffer[i]);  // channel 2
        usleep(125); 
    }
}

void play_tone_440hz(void)
{
    print("Playing 440Hz tone\r\n");
    play_audio(tone_paddle, TONE_PADDLE_LEN);
}

void play_tone_660hz(void)
{
    print("Playing 660Hz tone\r\n");
    play_audio(tone_score, TONE_SCORE_LEN);
}
void play_tone_mary(void)
{
    print("Playing Mary had a little Lamb\r\n");
    play_audio(tone_mary, 64000);
}