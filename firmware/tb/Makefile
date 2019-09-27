# Directories
RESULTDIR = sim
TARGETDIR = bin
SOURCEDIR = src

# Sources
SRCFILES := $(addsuffix /*, $(SOURCEDIR))
SRCFILES := $(wildcard $(SRCFILES))

VSOURCES := $(filter %.v, $(SRCFILES))

# Targets
VVPTRAGETS := $(subst $(SOURCEDIR), $(TARGETDIR), $(VSOURCES:%.v=%.vvp))
VCDTRAGETS := $(subst $(SOURCEDIR), $(RESULTDIR), $(VSOURCES:%.v=%.vcd))

simulate: make-dir $(VCDTRAGETS)

$(TARGETDIR)/%.vvp: $(SOURCEDIR)/%.v
	@echo Compilling testbench \'$<\' \> \'$@\'...
	@iverilog -o $@ $<

$(RESULTDIR)/%.vcd: $(TARGETDIR)/%.vvp
	@echo Running testbench \'$<\' \> \'$@\'...
	@vvp -n $<

make-dir:
	@mkdir -p $(TARGETDIR)
	@mkdir -p $(RESULTDIR)

clean:
	@rm -rf $(TARGETDIR)/*
	@rm -rf $(RESULTDIR)/*

.SECONDARY: $(VVPTRAGETS)

.PHONY: clean make-dir simulate