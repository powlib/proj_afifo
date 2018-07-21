# Default to verilog
TOPLEVEL_LANG ?= verilog

WPWD=$(shell sh -c 'pwd -W')
PWD=$(shell pwd)
PROJLIB=$(PWD)/../..
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
    VERILOG_SOURCES = $(PROJLIB)/hdl/*.v $(PWD)/test_proj_lane.v
    COMPILE_ARGS = -g 2001 -I $(PROJLIB)/powlib/ -I $(PROJLIB)/hdl/both/ -I $(PROJLIB)/hdl/behav/     
    TOPLEVEL = test_proj_lane
else
    $(error "A valid value (verilog) was not provided for TOPLEVEL_LANG=$(TOPLEVEL_LANG)")
endif

MODULE=test_flipflop

include $(COCOTB)/makefiles/Makefile.inc
include $(COCOTB)/makefiles/Makefile.sim

