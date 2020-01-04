
DESIGN_NAME = icyradio

# Device
# lp384 set device type to iCE40LP384
# lp1k  set device type to iCE40LP1K
# lp8k  set device type to iCE40LP8K
# hx1k  set device type to iCE40HX1K
# hx8k  set device type to iCE40HX8K
# up5k  set device type to iCE40UP5K
# u4k	set device type to iCE5LP4K
DEVICE = hx8k
PACKAGE = ct256

# Directories
TARGETDIR = bin
SOURCEDIR = src

# Version
$(shell if ! test -f $(TARGETDIR)/.version; then echo 0 > $(TARGETDIR)/.version; fi)

INC_VERSION ?= n
DESIGN_VERSION = $(shell cat $(TARGETDIR)/.version)

ifeq ($(INC_VERSION), y)
$(shell echo $$(($(DESIGN_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm $(TARGETDIR)/v*.$(DESIGN_NAME)*)
DESIGN_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

ifeq ($(DESIGN_VERSION), 0)
$(shell echo $$(($(DESIGN_VERSION) + 1)) > $(TARGETDIR)/.version)
$(shell rm $(TARGETDIR)/v*.$(DESIGN_NAME)*)
DESIGN_VERSION = $(shell cat $(TARGETDIR)/.version)
endif

# Pinout
PCFILE = $(SOURCEDIR)/$(DESIGN_NAME).pcf

# Target
TARGET = $(TARGETDIR)/v$(DESIGN_VERSION).$(DESIGN_NAME)

# Sources
SRCFILES := $(addsuffix /*, $(SOURCEDIR))
SRCFILES := $(wildcard $(SRCFILES))

VSOURCES := $(filter %.v, $(SRCFILES))

all: make-dir version $(TARGET).bin $(TARGET).h timing

$(TARGET).blif: $(VSOURCES)
	@echo Synthesizing blif file...
	@yosys -q -p "synth_ice40 -top $(DESIGN_NAME) -asc $@" $(VSOURCES)

$(TARGET).json: $(VSOURCES)
	@echo Synthesizing json file...
	@yosys -q -p "synth_ice40 -top $(DESIGN_NAME) -json $@" $(VSOURCES)

$(TARGET).asc: $(TARGET).json
	@echo Runing place and route...
	@nextpnr-ice40 -q --$(DEVICE) --package $(PACKAGE) --json $(TARGET).json --pcf $(PCFILE) --asc $@

$(TARGET).bin: $(TARGET).asc
	@echo Packing bin file...
	@icepack $< $@

$(TARGET).h: $(TARGET).bin
	@echo Generating C header file...
	@xxd -i $< $@
	@sed -i 's/unsigned char $(TARGETDIR)_/const uint8_t /g' $@
	@sed -i 's/unsigned int $(TARGETDIR)_/const uint32_t /g' $@

inc-version: clean
	@echo $$(($(DESIGN_VERSION) + 1)) > $(TARGETDIR)/.version

dec-version: clean
	@echo $$(($(DESIGN_VERSION) - 1)) > $(TARGETDIR)/.version

version:
	@echo Design version: v$(DESIGN_VERSION)
	@echo ---------------------------------------------------------------------------

write-sram: $(TARGET).bin
	@echo Writing SRAM...
	@icecream -S $<

write-flash: $(TARGET).bin
	@echo Writing external FLASH...
	@icecream $<

erase:
	@echo Erasing external FLASH...
	@icecream -e 1 -b

timing: $(TARGET).asc
	@echo Running timing analysis tool...
	@icetime -p $(PCFILE) -P $(PACKAGE) -tm -d $(DEVICE) -r $(TARGET)-timing.txt $< | grep "Timing estimate"

pnr-gui: $(TARGET).json
	@nextpnr-ice40 --gui -q --$(DEVICE) --package $(PACKAGE) --json $(TARGET).json --pcf $(PCFILE)

make-dir:
	@mkdir -p $(TARGETDIR)

clean:
	@rm -rf $(TARGETDIR)/*

.PHONY: clean make-dir write-sram erase timing timing-net-list pnr-gui write-flash version dec-version inc-version all
