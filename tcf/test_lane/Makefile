# Default to verilog
TOPLEVEL_LANG ?= verilog

WPWD=$(shell sh -c 'pwd -W')
PWD=$(shell pwd)
PROJLIB=$(PWD)/../..
XILINXLIB=$(XILINX_VIVADO)/data/verilog/src
COCOTB=$(PROJLIB)/cocotb/
SIM=icarus

$(info [$(CUSTOM_SIM_DEPS)])

ifeq ($(OS),Msys)
WPWD=$(shell sh -c 'pwd -W')
PYTHONPATH := $(PROJLIB)/simlib;$(PYTHONPATH)
else
WPWD=$(shell pwd)
PYTHONPATH := $(PROJLIB)/simlib:$(PYTHONPATH)
endif

ifeq ($(TOPLEVEL_LANG),verilog)
    VERILOG_SOURCES = $(PROJLIB)/powlib/*.v $(PROJLIB)/hdl/both/*.v $(PROJLIB)/hdl/behav/*.v $(PWD)/test_lane.v
    COMPILE_ARGS = -g 2001 -I $(PROJLIB)/powlib/ -I $(PROJLIB)/hdl/both/ -I $(PROJLIB)/hdl/behav/ \
     #-y $(XILINXLIB)/unisims/ \
     #-y $(XILINXLIB)/ \
     #-y $(XILINXLIB)/unimacro/ \
     #-y $(XILINXLIB)/xeclib/ \
     #-y $(XILINXLIB)/unisims_dr/ \
     #-y $(XILINXLIB)/unifast/
    TOPLEVEL = test_lane
else
    $(error "A valid value (verilog) was not provided for TOPLEVEL_LANG=$(TOPLEVEL_LANG)")
endif

MODULE=test_lane

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim

