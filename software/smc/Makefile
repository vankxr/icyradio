# App Config
ARM_LIBROOT ?= /mnt/e/Projetos/ARM/ARMdev/lib/
DEVICEDIR = $(ARM_LIBROOT)/SiliconLabs.EFM32GG11B_DFP.5.8.10/Device/SiliconLabs/EFM32GG11B
COREDIR = $(ARM_LIBROOT)/ARM.CMSIS.5.8.0/CMSIS
MCU_TYPE = EFM32GG11B420F2048GL112
APP_ADDRESS = 0x00000000
APP_NAME = icyradio-smc

# Multiprocessing
MAX_PARALLEL =

# Directories
TARGETDIR = bin
SOURCEDIR = src
OBJECTDIR = bin/obj
INCLUDEDIR = include

STRUCT := $(shell find $(SOURCEDIR) -type d)

SOURCEDIRSTRUCT := $(filter-out %/include, $(STRUCT))
INCLUDEDIRSTRUCT := $(filter %/include, $(STRUCT)) $(DEVICEDIR)/Include $(COREDIR)/DSP/Include $(COREDIR)/Core/Include
OBJECTDIRSTRUCT := $(subst $(SOURCEDIR), $(OBJECTDIR), $(SOURCEDIRSTRUCT))

# Build type
BUILD_TYPE ?= debug

# Version
$(shell if ! test -f $(TARGETDIR)/.version; then echo 0 > $(TARGETDIR)/.version; fi)

INC_VERSION ?= n
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)

ifeq ($(INC_VERSION), y)
$(shell if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) + 1))).$(APP_NAME)/g' .vscode/launch.json; fi)
$(shell echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm -rf $(OBJECTDIR)/*)
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

ifeq ($(BUILD_VERSION), 0)
$(shell echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm -rf $(OBJECTDIR)/*)
BUILD_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

# Compillers & Linker
CC = arm-none-eabi-gcc
CXX = arm-none-eabi-g++
LD = arm-none-eabi-gcc
AS = arm-none-eabi-as
STRIP = arm-none-eabi-strip
OBJCOPY = arm-none-eabi-objcopy
OBJDUMP = arm-none-eabi-objdump
GDB = arm-none-eabi-gdb

# Compillers & Linker flags
ASFLAGS = -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16
CFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -O3 -std=gnu99 -Wpointer-arith -Werror -D$(MCU_TYPE) -DBUILD_VERSION=$(BUILD_VERSION)
CXXFLAGS = $(addprefix -I,$(INCLUDEDIRSTRUCT)) -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -fno-rtti -fno-exceptions -O3 -std=c++17 -Wpointer-arith -Werror -D$(MCU_TYPE) -DBUILD_VERSION=$(BUILD_VERSION)
LDFLAGS = -mthumb -mcpu=cortex-m4 -mfloat-abi=hard -mfpu=fpv4-sp-d16 --specs=nano.specs --specs=nosys.specs -nostdlib -nostartfiles -ffunction-sections -fdata-sections -ffreestanding -Wl,--gc-sections
LDLIBS = -lm -lc -lgcc -lnosys -larm_cortexM4lf_math
LDLIBSPATH = -L$(COREDIR)/DSP/Lib/GCC

ifeq ($(BUILD_TYPE), debug)
CFLAGS += -g
CXXFLAGS += -g
endif

## Linker scripts
LDSCRIPT = ld/efm32gg11bx20f2048_app.ld

# Target
TARGET = $(TARGETDIR)/v$(BUILD_VERSION).$(APP_NAME)

# Sources & objects
SRCFILES := $(addsuffix /*, $(SOURCEDIRSTRUCT))
SRCFILES := $(wildcard $(SRCFILES))

ASSOURCES := $(filter %.s, $(SRCFILES))
ASOBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(ASSOURCES:%.s=%.o))

CSOURCES := $(filter %.c, $(SRCFILES))
COBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(CSOURCES:%.c=%.o))

CXXSOURCES := $(filter %.cpp, $(SRCFILES))
CXXOBJECTS := $(subst $(SOURCEDIR), $(OBJECTDIR), $(CXXSOURCES:%.cpp=%.o))

SOURCES = $(ASSOURCES) $(CSOURCES) $(CXXSOURCES)
OBJECTS = $(ASOBJECTS) $(COBJECTS) $(CXXOBJECTS)

all: clean-bin make-dir version compile mem-usage

compile:
	@$(MAKE) INC_VERSION=n --no-print-directory -j${MAX_PARALLEL} $(TARGET).elf
	@$(MAKE) INC_VERSION=n --no-print-directory -j${MAX_PARALLEL} $(TARGET).bin $(TARGET).hex $(TARGET).lss

$(TARGET).lss: $(TARGET).elf
	@echo Creating LSS file \'$@\'...
	@$(OBJDUMP) -S --disassemble $< > $@

$(TARGET).bin: $(TARGET).elf
	@echo Creating BIN file \'$@\'...
	@$(OBJCOPY) -O binary --only-section=.isr_vector --only-section=.text --only-section=.ARM --only-section=.iram0.text --only-section=.data $< $(TARGET).irom0.bin
	@$(OBJCOPY) -O binary --only-section=.irom1.text $< $(TARGET).irom1.bin
	@$(OBJCOPY) -O binary --only-section=.irom2.text $< $(TARGET).irom2.bin
	@$(OBJCOPY) -O binary --only-section=.drom0.data $< $(TARGET).drom0.bin
	@$(OBJCOPY) -O binary --only-section=.drom1.data $< $(TARGET).drom1.bin

$(TARGET).hex: $(TARGET).elf
	@echo Creating HEX file \'$@\'...
	@$(OBJCOPY) -O ihex --remove-section=.irom2.text --remove-section=.drom1.data $< $@
	@$(OBJCOPY) -O ihex --only-section=.isr_vector --only-section=.text --only-section=.ARM --only-section=.iram0.text --only-section=.data $< $(TARGET).flash.hex
	@$(OBJCOPY) -O ihex --only-section=.irom1.text $< $(TARGET).boot.hex
	@$(OBJCOPY) -O ihex --only-section=.drom0.data $< $(TARGET).userdata.hex
	@$(OBJCOPY) -O ihex --only-section=.irom2.text --only-section=.drom1.data $< $(TARGET).qspi.hex

$(TARGET).elf: $(OBJECTS)
	@echo ---------------------------------------------------------------------------
	@echo Creating ELF file \'$@\'...
	@$(LD) $(LDFLAGS) -o $@ $^ -T $(LDSCRIPT) $(LDLIBSPATH) $(LDLIBS) -Wl,-Map=$(TARGET).map
ifeq ($(BUILD_TYPE), release)
	@$(STRIP) -g $@
endif

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.s
	@echo Compilling ASM file \'$<\' \> \'$@\'...
	@$(AS) $(ASFLAGS) -MD -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.c
	@echo Compilling C file \'$<\' \> \'$@\'...
	@$(CC) $(CFLAGS) -MD -c -o $@ $<

$(OBJECTDIR)/%.o: $(SOURCEDIR)/%.cpp
	@echo Compilling C++ file \'$<\' \> \'$@\'...
	@$(CXX) $(CXXFLAGS) -MD -c -o $@ $<

debug: $(TARGET).elf
	$(GDB) $(TARGET).elf

inc-version:
	@echo $$(($(BUILD_VERSION) + 1)) > $(TARGETDIR)/.version
	@if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) + 1))).$(APP_NAME)/g' .vscode/launch.json; fi

dec-version:
	@echo $$(($(BUILD_VERSION) - 1)) > $(TARGETDIR)/.version
	@if test -f .vscode/launch.json; then sed -i 's/v$(BUILD_VERSION).$(APP_NAME)/v$(shell echo $$(($(BUILD_VERSION) - 1))).$(APP_NAME)/g' .vscode/launch.json; fi

version:
	@echo Build version: v$(BUILD_VERSION)
	@echo ---------------------------------------------------------------------------

mem-usage: $(TARGET).elf
	@echo ---------------------------------------------------------------------------
	@armmem -l $(LDSCRIPT) -d -h $<

make-dir:
	@mkdir -p $(OBJECTDIRSTRUCT)

clean-bin:
	@rm -f $(TARGETDIR)/*.lss
	@rm -f $(TARGETDIR)/*.hex
	@rm -f $(TARGETDIR)/*.bin
	@rm -f $(TARGETDIR)/*.map
	@rm -f $(TARGETDIR)/*.elf

clean: clean-bin
	@rm -rf $(OBJECTDIR)/*

-include $(OBJECTS:.o=.d)

.PHONY: clean clean-bin make-dir mem-usage version dec-version inc-version debug compile all