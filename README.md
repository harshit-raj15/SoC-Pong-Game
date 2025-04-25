<!-- PROJECT LOGO -->
<br />
<p align="center">
  <a href="https://github.com/smartsystemslab-uf/project-2-harshit-raj15">
    <img src="images/logo.jpg" alt="Logo" width="150" height="150">
  </a>

  <h3 align="center">Project-2</h3>

  <p align="center">
    Pong Game (Player Vs Environment)
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

This project focuses on System-on-Chip design implementation using the Urbana Board with a Microblaze V softcore processor on a Spartan 7 FPGA. The comprehensive hands-on experience includes peripheral IP integration, bus protocol implementation, and system-level debugging across three main tasks. 
The first part includes implementing a basic SoC running a "Hello World" C application on the Microblaze V processor. 
The second task involves generating an APB component with RSA cipher decoding capabilities, requiring custom C code development for testing. The final task includes creating a Player vs. Environment (PvE) Pong game by modifying an existing AXI peripheral IP, implementing paddle controls through AXI GPIO, and developing ball trajectory calculations within the Microblaze V processor. 
This implementation requires an understanding of AXI addressing protocols and proper IP packaging in Vivado. The project emphasizes the practical application of SoC concepts.
[Pong Game](https://github.com/smartsystemslab-uf/project-2-harshit-raj15)

<!-- GETTING STARTED -->

## Getting Started

- Clone the Repository.
- Launch Vivado and open the project file, add the constraints file.
- Run Synthesis → Implementation → Bitstream Generation in Vivado.
- Export the hardware from the vivado to obtain the .xsa file.
- Create a new vitis workspace and also generate a platform with the .xsa file that you have exported in last step
- Create a embedded environment and copy the C code provide, compile the code.
- Use a USB to programmer/load the generated bitstream onto the Spartan-7 FPGA board.
- Play the Game!!

<p>You can find all the required IPs inside project_ip folder (It includes the APB_LED_CTL IP and updated MypongIP).</p>
<p>You can find the project files where I combined all the IPs to create a final project inside project_3_led_rsa_pong folder.</p>
<p>You can also see the block diagram of the complete system attached as pdf named Project2_Block_Design.</p>
<p>You can also directly program the board by opening the vitis project file in this repository named vitis_ws_led_rsa_pong. </p> 
<p>Get the .xsa file and c/cpp file from the repository named as design_1_wrapper and helloworld respectively.</p>

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

- [Watch the demo video 1](videos/Project2a.mp4)
- [Watch the demo video 2](videos/Project2b.mp4)

<!-- LICENSE -->

## License

All softwares are free to use for commercial and educational purposes with proper references given.

<!-- Authors -->

## Authors

Harshit Raj - harshitraj@ufl.edu

## Acknowledgements

- [AMD](https://www.amd.com/en.html)
- [Xilins](https://www.xilinx.com/support/download.html)
- [RealDigital](https://www.realdigital.org/hardware/urbana)



