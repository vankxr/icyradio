# icyradio
![](https://github.com/vankxr/icyradio/blob/master/pcb/main/icyradio-main.top.png)  
A **S**oftware **D**efined **R**adio development board.

## Main components
 - [EFM32GG11B420F2048GL112](https://www.silabs.com/documents/public/data-sheets/efm32gg11-datasheet.pdf) - System management controller MCU
 - [ATSAMV71Q21](http://ww1.microchip.com/downloads/en/DeviceDoc/SAM-E70-S70-V70-V71-Family-Data-Sheet-DS60001527D.pdf) - Digital signal processing MCU
 - [ICE40HX8K-CT256](https://pt.mouser.com/datasheet/2/225/FPGA-DS-02029-3-5-iCE40-LP-HX-Family-Data-Sheet-1022803.pdf) - FPGA
 - [R820T2](https://www.rtl-sdr.com/wp-content/uploads/2013/04/R820T_datasheet-Non_R-20111130_unlocked1.pdf) - Highly integrated RX Tuner
 - [LTC2205/6](https://www.analog.com/media/en/technical-documentation/data-sheets/22076fc.pdf) - 60/80 MSPS 16-bit RX ADC
 - [AD9117](https://www.analog.com/media/en/technical-documentation/data-sheets/ad9114_9115_9116_9117.pdf) - 125 MSPS 14-bit TX DAC
 - [ADF4351](https://www.analog.com/media/en/technical-documentation/data-sheets/ADF4351.pdf) - 4.4 GHz TX LO Synthesizer
 - [ADL5385](https://www.analog.com/media/en/technical-documentation/data-sheets/ADL5385.pdf) - 2.2 GHz Quadrature TX Mixer/Modulator
 - [ADL5601](https://www.analog.com/media/en/technical-documentation/data-sheets/ADL5601.pdf) - 15 dB TX Gain block
 - [SI5351C](https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf) - System clock synthesizer
 - [CP2615](https://www.silabs.com/documents/public/data-sheets/cp2615-datasheet.pdf) - USB to I2S bridge
 - [TSCS25A3X1NDGXZAX](http://temposemi.com/wp-content/uploads/2018/06/TSCS25xx_DS.pdf) - 96 kHz Audio CODEC
 
## Simplified block diagram
![](https://github.com/vankxr/icyradio/blob/ssb-mod/docs/block-diagram.png)  
#### ssb-mod
This branch implements a **S**ingle **S**ide **B**and audio modulator, optimized for the QO-100 narrowband transponder.
It implements a pre-emphasis filter to allow better SNR at audio high frequencies and general audio power spectral distribution

## Dependencies
 - [icestorm](https://github.com/cliffordwolf/icestorm) - FPGA toolchain
 - [arm-none-eabi-gcc](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) - MCUs toolchain
 - [Device CMSIS](https://www.keil.com/dd2/) - CMSIS headers defining the MCU memories, peripherals, etc...
 - [Core CMSIS](https://github.com/ARM-software/CMSIS_5) - CMSIS headers defining the ARM Cores
 - [armmem](https://github.com/vankxr/armmem) - ELF file analyzer (required for the MCU Makefiles to work)

## Errata
 - Microchip DS12x1 has the wrong package in the PCB version that was sent for manufacturing. The package in the datasheet has the pins wrongly named clockwise.
 - The oscillators used have a drift of +-20ppm, this is really high for transmitting narrow band signals above ~300MHz, and can easily be heard. A +-0.5ppm oscillator was deadbugged in place for the ADF4351 and R820T2 references.
 - The DAC common mode pins were not connected in the PCB version that was sent for manufacturing. Solution was to scrape a bit of the GND plane and solder the pins to it.
 - Other minor hardware errata such as drop-in component replacement (i.e. filter tuning) is not stated here, view the schematic history.

## Authors

* **João Silva** - [vankxr](https://github.com/vankxr)

## License

This firmware is licensed under [MIT](LICENSE).
