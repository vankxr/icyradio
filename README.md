# icyradio
![PCB Preview](https://raw.githubusercontent.com/vankxr/icyradio/master/pcb/main/icyradio-main.top.png)
A **S**oftware **D**efined **R**adio development board.
Main components are:
 - LTC2205/6 - 60/80 MSPS 16-bit RX ADC
 - AD9117 - 125 MSPS 14-bit TX DAC
 - ...

## Dependencies
 - [icestorm](https://github.com/cliffordwolf/icestorm) - FPGA toolchain
 - [arm-none-eabi-gcc](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) - MCUs toolchain
 - [Device CMSIS](https://www.keil.com/dd2/) - CMSIS headers defining the MCU memories, peripherals, etc...
 - [Core CMSIS](https://github.com/ARM-software/CMSIS_5) - CMSIS headers defining the ARM Cores
 - [armmem](https://github.com/vankxr/armmem) - ELF file analyzer (required for the MCU Makefiles to work)

## Authors

* **João Silva** - [vankxr](https://github.com/vankxr)

## License

This firmware is licensed under [MIT](LICENSE).
