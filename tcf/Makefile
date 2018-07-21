PWD=$(shell pwd)
POWLIB=$(PWD)/../..
COCOTB=$(POWLIB)/cocotb/
TESTS=$(wildcard */)

all: $(TESTS) 
	$(foreach test, $^, $(MAKE) -C $(test);)
	$(COCOTB)/bin/combine_results.py
	