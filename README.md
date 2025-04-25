<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/harshit-raj15/SoC-Pong-Game">
    <img src="images/logo.jpg" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">Pong Game</h3>

  <p align="center">
    Player Vs Environment with Audio Feedback
  </p>
</p>

<!-- TABLE OF CONTENTS -->
<details open="open">
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
    </li>
    <li><a href="#getting-started">Getting Started</a></li>
    <li><a href="#usage">Usage</a></li>
    <li><a href="#license">License</a></li>
    <li><a href="#authors">Authors</a></li>
    <li><a href="#acknowledgements">Acknowledgements</a></li>
  </ol>
</details>

<!-- ABOUT THE PROJECT -->

## About The Project

This project focuses on System-on-Chip design implementation using the Urbana Board with a Microblaze V softcore processor on a Spartan 7 FPGA. The comprehensive hands-on experience includes peripheral IP integration, bus protocol implementation, and system-level debugging across four main tasks. The first task involves generating 8-bit audio tables for different Pong game scenarios-single 0.25 s tones for paddle hits and scoring, plus a "Mary Had a Little Lamb" melody upon win or loss. The second task requires developing a PWM driver to run the audio-out port on the Urbana Board, leveraging Vivado IP creation and custom driver code for audible output. In the third task, a non-DMA SoC is built by integrating the PWM hardware and audio tables into the PvE Pong design from Lab 2, using AXI GPIO for paddle control and C software on Microblaze V to orchestrate game logic and audio playback. The final task enhances performance by incorporating the AXI Central DMA (CDMA) to transfer audio samples to the PWM driver, demonstrating mastery of AXI memory-mapped protocols and DMA-based data movement. Overall, this implementation underscores practical SoC concepts-IP packaging, AXI addressing, DMA integration, and system debugging-culminating in an interactive Pong game with real-time audio feedback.
[Pong Game](https://github.com/harshit-raj15/SoC-Pong-Game)

<!-- GETTING STARTED -->

## Getting Started

- Clone the Repository.
- Launch Vivado and open the project file, add IP folder in the project settings.
- Run Synthesis → Implementation → Bitstream Generation in Vivado.
- Export the hardware from the vivado to obtain the .xsa file.
- Create a new vitis workspace and also generate a platform with the .xsa file that you have exported in last step
- Create a embedded environment and copy the C code provide, compile the code.
- Use a USB to programmer/load the generated bitstream onto the Spartan-7 FPGA board.
- Play the Game!!

<p>You can find all the required IPs inside ip_repo folder.</p>
<p>You can find the implementaion/files of all the tasks inside their respective folders.</p>

<!-- USAGE EXAMPLES -->

## Usage

The complete system will look something like below.
<p align="center">
  <a>
    <img src="images/Project2_Block_Diagram.png" alt="Screenshot 1" width="500" height="300">
  </a>
</p>

The termnial output after implementing the first task will look something like below.
<p align="center">
  <a>
    <img src="images/Terminal_Hello_World.png" alt="Screenshot 2" width="500" height="300">
  </a>
</p>

The termnial output after implementing the whole project will look something like below.
<p align="center">
  <a>
    <img src="images/Terminal_Final_Output.png" alt="Screenshot 3" width="500" height="300">
  </a>
</p>

The table below shows the offset values of the APB LED CTL which you can reffer to give input to the RSA.
<p align="center">
  <a>
    <img src="images/Offset_Table.png" alt="Screenshot 3" width="400" height="200">
  </a>
</p>

The following video shows the working of the Pong game on the Urbana board XC7S50-CSGA324-1 by RealDigital.

- [Watch the demo video 1](videos/)
- [Watch the demo video 2](videos/)

<!-- LICENSE -->

## License

All softwares are free to use for commercial and educational purposes with proper references given.

<!-- Authors -->

## Authors

Harshit Raj - harshitraj@ufl.edu
Nitesh Bakhati - nitesh.bakhati@ufl.edu
Benjamin Jacob - benjaminjacob@ufl.edu
Alexis Villegas - avillegas2@ufl.edu

## Acknowledgements

- [AMD](https://www.amd.com/en.html)
- [Xilins](https://www.xilinx.com/support/download.html)
- [RealDigital](https://www.realdigital.org/hardware/urbana)
