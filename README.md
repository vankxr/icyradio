# icyradio
![](https://github.com/vankxr/icyradio/blob/v2/qo100/pcb/main/icyradio-main.top.png)  
A **S**oftware **D**efined **R**adio development board.

## Main components
 - [EFM32GG11B420F2048GL112](https://www.silabs.com/documents/public/data-sheets/efm32gg11-datasheet.pdf) - System management controller MCU
 - [ATSAMV71Q21](http://ww1.microchip.com/downloads/en/DeviceDoc/SAM-E70-S70-V70-V71-Family-Data-Sheet-DS60001527D.pdf) - Digital signal processing MCU
 - [ICE40HX8K-CT256](https://pt.mouser.com/datasheet/2/225/FPGA-DS-02029-3-5-iCE40-LP-HX-Family-Data-Sheet-1022803.pdf) - FPGA
 - [AD9361](https://github.com/vankxr/icyradio/raw/v2/qo100/docs/ad9361_transceiver/AD9361_Datasheet_RevF.pdf) - Agile RF Transceiver
 - [SI5351C](https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf) - System clock synthesizer
 - [FT601Q](http://www.ftdichip.com/Support/Documents/DataSheets/ICs/DS_FT600Q-FT601Q%20IC%20Datasheet.pdf) - USB to FIFO bridge
 - [ADAU1372](https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU1372.pdf) - Audio CODEC
 - TODO... 

## Simplified block diagram
![](https://github.com/vankxr/icyradio/blob/v2/qo100/docs/block-diagram.png)  
#### v2/qo100
This branch implements a SSB audio modulator, optimized for the **QO-100** narrowband transponder.
It implements a pre-emphasis filter to allow better SNR at audio high frequencies and general audio power spectral distribution.
It aldo supports receiving and sending baseband samples via USB to a computer that can process them. This feature is used to implement a DVB-S/S2 modulator and demodulator to work on the **QO-100** wideband transponder. Additional resources to build the complete ground station can be found [in this repository](https://github.com/vankxr/qo-100-tools).

## Dependencies
 - [icestorm](https://github.com/cliffordwolf/icestorm) - FPGA toolchain
 - [arm-none-eabi-gcc](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) - MCUs toolchain
 - [Device CMSIS](https://www.keil.com/dd2/) - CMSIS headers defining the MCU memories, peripherals, etc...
 - [Core CMSIS](https://github.com/ARM-software/CMSIS_5) - CMSIS headers defining the ARM Cores
 - [armmem](https://github.com/vankxr/armmem) - ELF file analyzer (required for the MCU Makefiles to work)
 - [libusb](https://libusb.info/) - Used to interact with the board via USB
 - [ffmpeg](https://ffmpeg.org/) - Used to multiplex and demultiplex MPEG2 Transport Streams for DVB
 - [leansdr](https://github.com/pabr/leansdr) - Contains leandvb and leandvbtx to demodulate and modulate DVB respectively
 - [csdr](https://github.com/ha7ilm/csdr) - SDR utilities so that a working signal chain can be built on the command line only

## Errata
 - Still WIP, hope no errata makes it here...

## Authors

* **João Silva** - [vankxr](https://github.com/vankxr)

## License

The content of this repository is licensed under the [GNU General Public License v3.0](LICENSE).
