###############################################################################
# Variables: Program ELF
###############################################################################
ELF_FILE ?= test.elf

OBJCOPY ?= riscv64-unknown-elf-objcopy
ifeq ($(shell which $(OBJCOPY)),)
  ${error $(OBJCOPY) missing from PATH}
endif
ifeq ($(shell which iverilog),)
  ${error iverilog missing from PATH - Icarus Verilog required}
endif


###############################################################################
# Variables: Defaults
###############################################################################
TRACE          ?= 1

RTL_DIR        ?= ../rtl .
SRC_DIR        ?= .

EXE            ?= output.out

###############################################################################
# Variables: Verilog
###############################################################################
SRC_V       ?= $(foreach src,$(RTL_DIR),$(wildcard $(src)/*.v))

VFLAGS      += $(patsubst %,-I%,$(RTL_DIR))
VFLAGS      += -DTRACE=$(TRACE)

###############################################################################
# Variables: Lists of objects, source and deps
###############################################################################
BUILD_DIR      ?= build/

###############################################################################
# Rules
###############################################################################
all: run

$(BUILD_DIR):
	@mkdir -p $@

$(BUILD_DIR)/tcm.bin: $(ELF_FILE) | $(BUILD_DIR)
	$(OBJCOPY) $< -O binary $@

$(BUILD_DIR)/$(EXE): $(SRC_V) | $(BUILD_DIR)
	@echo "# Compiling verilog"
	iverilog $(VFLAGS) -o $@ $(SRC_V)

run: $(BUILD_DIR)/$(EXE) $(BUILD_DIR)/tcm.bin
	vvp $(BUILD_DIR)/$(EXE) -vcd

wave:
	gtkwave waveform.vcd gtksettings.sav &

clean:
	rm -rf $(BUILD_DIR) *.vcd

