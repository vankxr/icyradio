TARGET_NAME = ice40-dev

# Directories
TARGETDIR = bin
SOURCEDIR = src

# flags
# lp384 set device type to iCE40LP384
# lp1k  set device type to iCE40LP1K
# lp8k  set device type to iCE40LP8K
# hx1k  set device type to iCE40HX1K
# hx8k  set device type to iCE40HX8K
# up5k  set device type to iCE40UP5K
# u4k	set device type to iCE5LP4K
DEVICE = hx8k
PACKAGE = ct256
TOPMODULE = top

# Sources
SRCFILES := $(addsuffix /*, $(SOURCEDIR))
SRCFILES := $(wildcard $(SRCFILES))

VSOURCES := $(filter %.v, $(SRCFILES))
PCFILE	:= $(filter %.pcf, $(SRCFILES))

# Targets
TARGETBIN = $(addsuffix .bin, $(TARGETDIR)/$(TARGET_NAME))
TARGETASC = $(addsuffix .asc, $(TARGETDIR)/$(TARGET_NAME))
TARGETBLIF = $(addsuffix .blif, $(TARGETDIR)/$(TARGET_NAME))
TARGETJSON = $(addsuffix .json, $(TARGETDIR)/$(TARGET_NAME))

synthesize: make-dir $(TARGETBIN)

$(TARGETBLIF): $(VSOURCES)
	@echo Synthesizing blif file...
	@yosys -q -p "synth_ice40 -top $(TOPMODULE) -asc $@" $(VSOURCES)

$(TARGETJSON): $(VSOURCES)
	@echo Synthesizing json file...
	@yosys -q -p "synth_ice40 -top $(TOPMODULE) -json $@" $(VSOURCES)

$(TARGETASC): $(TARGETJSON) $(PCFILE)
	@echo Runing place and route...
	@nextpnr-ice40 -q --$(DEVICE) --package $(PACKAGE) --json $(TARGETJSON) --pcf $(PCFILE) --asc $@

$(TARGETBIN): $(TARGETASC)
	@echo Packing bin file...
	@icepack $< $@

write-sram: $(TARGETBIN)
	@echo Writing SRAM...
	@icecream -S $<

write-flash: $(TARGETBIN)
	@echo Writing external FLASH...
	@icecream $<

erase:
	@echo Erasing external FLASH...
	@icecream -e 1 -b

timing: $(TARGETASC)
	@echo Running timing analysis tool...
	@icetime -p $(PCFILE) -P $(PACKAGE) -tm -d $(DEVICE) -r $(TARGETDIR)/$(TARGET_NAME)-timing.txt $<

pnr-gui: $(TARGETJSON) $(PCFILE)
	@nextpnr-ice40 --gui -q --$(DEVICE) --package $(PACKAGE) --json $(TARGETJSON) --pcf $(PCFILE)

make-dir:
	@mkdir -p $(TARGETDIR)

clean:
	@rm -rf $(TARGETDIR)/*

.PHONY: clean make-dir write-sram erase timing timing-net-list pnr-gui write-flash synthesize
