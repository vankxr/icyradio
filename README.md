# icyradio
![](https://github.com/vankxr/icyradio/blob/v2/pcb/main/icyradio-main.top.png)
A **S**oftware **D**efined **R**adio development board.

Initial project codename **Icy**radio originated from the device family name of the FPGA used in the [first version](https://github.com/vankxr/icyradio/tree/v1/qo100) (**ICE**40). Coincidently, the device family name of the FPGA used in this version (Artix) also resembles a very cold region, the Arctic, hence, the project codename still holds some of its sense :blush:.

## Main components
 - [XC7A100T-2FGG484](https://pt.mouser.com/datasheet/2/903/ds180_7Series_Overview-1591537.pdf) - FPGA
 - [Raspberry Pi CM4](https://datasheets.raspberrypi.com/cm4/cm4-datasheet.pdf) - Raspberry Pi Compute Module 4
 - [MT41K256M16TW-125](https://media-www.micron.com/-/media/client/global/documents/products/data-sheet/dram/ddr3/4gb_1_35v_ddr3l_xit_addendum.pdf?rev=993cd23ec9f2450c8cae38fcb35343bd) - DDR3 RAM
 - [AD9361](https://github.com/vankxr/icyradio/raw/v2/qo100/docs/ad9361_transceiver/AD9361_Datasheet_RevF.pdf) - Agile RF Transceiver
 - [SI5351C](https://www.silabs.com/documents/public/data-sheets/Si5351-B.pdf) - System clock synthesizer
 - [8V97003](https://www.renesas.com/us/en/document/dst/8v97003-datasheet?r=462341) - Frequency Synthesizer for external mixer support
 - [ADAU1372](https://www.analog.com/media/en/technical-documentation/data-sheets/ADAU1372.pdf) - Audio CODEC
 - [UPD301C](https://ww1.microchip.com/downloads/aemDocuments/documents/UNG/ProductDocuments/DataSheets/00003412A.pdf) - USB Power Delivery controller
 - [LT7182S](https://www.analog.com/media/en/technical-documentation/data-sheets/lt7182s.pdf) - Main Buck regulator

## Functional block diagram
![](https://github.com/vankxr/icyradio/blob/v2/docs/block-diagram.png)
#### v2
**Note: From v2 onwards, the only components in this repository are hardware related, no specific application software, like in v1 branches. Applications that use this hardware are kept in a separate repository (TODO: Add link)**
The goal of this project is to develop a flexible and feature rich SDR platform for tinkering. It will include, among other features, a mmWave synthesizer controlled by software to allow external mixers to be attached to the SDR and extend its frequency range (i.e. for 5G applications), and also allow interfacing to a Raspberry Pi Compute Module 4 for standalone operation.

## Dependencies
 - [vivado](https://www.xilinx.com/support/download.html) - FPGA toolchain
 - [arm-none-eabi-gcc](https://developer.arm.com/tools-and-software/open-source-software/developer-tools/gnu-toolchain/gnu-rm/downloads) - PD Controller MCU toolchain
 - [Device CMSIS](https://www.keil.com/dd2/) - CMSIS headers defining the MCU memories, peripherals, etc...
 - [Core CMSIS](https://github.com/ARM-software/CMSIS_5) - CMSIS headers defining the ARM Cores
 - [armmem](https://github.com/vankxr/armmem) - ELF file analyzer (required for the MCU Makefiles to work)
 - [SoapySDR](https://github.com/pothosware/SoapySDR) - Vendor and platform neutral SDR support library

## Software build instructions
TODO (In the meantime, check the github workflows)
### Kernel driver
TODO
### SoapySDR device driver
TODO

## Errata
 - The WP pin of the LT7182S regulator was left floating, with a placeholder resistor for pulling it up later, assuming it had an internal pulldown. Turns out it is floating, and thus it can be sampled internally as 1, write-protecting the device and forbidding configuration commands. A quick fix is to scrape a tiny bit of the ground plane near the WP resistor (R1120) pad, and shunting it to GND there with a blob of solder. The figure below exemplifies the process. The solder blob is marked in blue.
![](https://github.com/vankxr/icyradio/blob/v2/docs/errata/vin_reg_wp.png)
 - The FPGA INIT and DONE LED markings on the PCB are swapped (oops). In the picture below, it can be seen that D202 connects to the FPGA_DONE signal, yet it's labelled INIT. The FPGA_INIT signal connects to D201, and is labelled as DONE. It is merely an aesthetic problem, and does not affect functionality at all!
![](https://github.com/vankxr/icyradio/blob/v2/docs/errata/fpga_init_done_leds.png)

## Authors

* **João Silva** - [vankxr](https://github.com/vankxr)

## License

The content of this repository is licensed under the [GNU General Public License v3.0](LICENSE).
