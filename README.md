# icyradio
![](https://github.com/vankxr/icyradio/blob/v2/pcb/main/icyradio-main.top.png)  
A **S**oftware **D**efined **R**adio development board.

## Main components
 - [EFM32GG11B420F2048GL112](https://www.silabs.com/documents/public/data-sheets/efm32gg11-datasheet.pdf) - System management controller MCU
 - [XC7A100T-2FGG484](https://pt.mouser.com/datasheet/2/903/ds180_7Series_Overview-1591537.pdf) - FPGA
 - [Raspberry Pi CM4](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf) - Raspberry Pi Compute Module 4
 - [MT41K256M16TW-125](https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/dram/ddr3/4gb_1_35v_ddr3l_xit_addendum.pdf?rev=993cd23ec9f2450c8cae38fcb35343bd) - DDR3 RAM
 - [AD9361](https://github.com/vankxr/icyradio/raw/v2/qo100/docs/ad9361_transceiver/AD9361_Datasheet_RevF.pdf) - Agile RF Transceiver
 - [SI5351C](https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf) - System clock synthesizer
 - [8V97003](https://www.renesas.com/us/en/document/dst/8v97003-datasheet?r=462341) - Frequency Synthesizer for external mixer support
 - [CYUSB3014](https://www.cypress.com/file/140296/download) - USB to FIFO bridge
 - [ADAU1372](https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU1372.pdf) - Audio CODEC

## Top level block diagram
![](https://github.com/vankxr/icyradio/blob/v2/docs/top-level-block-diagram.png)

## Functional block diagram
![](https://github.com/vankxr/icyradio/blob/v2/docs/block-diagram.png)  
#### v2
**Note: From v2 onwards, the only components in this repository are hardware related, no specific application software, like in v1 branches. Applications that use this hardware are kept in a separate repository (TODO: Add link)**
The goal of this project is to develop a flexible and feature rich SDR platform for tinkering. It will include, among other features, a mmWave synthesizer controlled by software to allow external mixers to be attached to the SDR and extend its frequency range (i.e. for 5G applications), and also allow interfacing to a Raspberry Pi Compute Module 4 for standalone operation.

## Dependencies
 - [vivado](https://www.xilinx.com/support/download.html) - FPGA toolchain
 - [arm-none-eabi-gcc](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) - MCUs toolchain
 - [Device CMSIS](https://www.keil.com/dd2/) - CMSIS headers defining the MCU memories, peripherals, etc...
 - [Core CMSIS](https://github.com/ARM-software/CMSIS_5) - CMSIS headers defining the ARM Cores
 - [armmem](https://github.com/vankxr/armmem) - ELF file analyzer (required for the MCU Makefiles to work)
 - [libusb](https://libusb.info/) - Used to interact with the board via USB
 - [SoapySDR](https://github.com/pothosware/SoapySDR) - Vendor and platform neutral SDR support library
 - TODO: Remove from here [ffmpeg](https://ffmpeg.org/) - Used to multiplex and demultiplex MPEG2 Transport Streams for DVB
 - TODO: Remove from here [leansdr](https://github.com/pabr/leansdr) - Contains leandvb and leandvbtx to demodulate and modulate DVB respectively
 - TODO: Remove from here [csdr](https://github.com/ha7ilm/csdr) - SDR utilities to create signal chains the command line

## Software build instructions
TODO
### Kernel driver
TODO
### SoapySDR device driver
TODO

## Errata
 - Still WIP, hope no errata makes it here...

## Authors

* **João Silva** - [vankxr](https://github.com/vankxr)

## License

The content of this repository is licensed under the [GNU General Public License v3.0](LICENSE).
