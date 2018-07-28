# Introduction

The purpose of the proj\_afifo is to validate the powlib\_afifo module, an implementation of an asynchronous FIFO. This project is built with Vivado 2017.4 to run over the Digilent Nexy4 development board, however the project can be built for any FPGA whose compilation tools support Verilog 2001.

# File Structure

The following describes the file structure of this project.

+ cocotb --- Submodule that contains cocotb. A dependency of the simulations.
+ hdl --- Contains the sources specific to the project.
  + behav --- Contains the sources related solely to simulation.
  + both --- Contains the sources needed by both simulation and synthesis.
  + synth --- Contains the sources related solely to synthesis.
+ scripts --- Contains the scripts specific to the project.
+ simlib --- Contains the powlib simulation library. A dependency of the simulations.
+ powlib --- Submodule that contains the powlib hardware description library. The definition of powlib\_afifo is found here.
+ tcf --- Test case files.
+ proj_vivado --- Contains the Vivado project. This folder doesn't appear until the create\_project.tcl script is executed within Vivado. 

# Simulation

The design was first verified with tests written in Python and simulated with Icarus Verilog. A netlist of the Xilinx IP was generated with the following Tcl command after synthesis.

````
write_verilog -mode funcsim -include_xilinx_libs hdl/behav/xilinx_ip.v
````

Once Icarus Verilog is installed, simply run make in the tcf folder to run all the test cases. It should be noted Cocotb and Icarus can be executed within a MSYS2 environment if Windows is needed. A combined\_results.xml file should be created once the test cases finish executing. 

# Synthesis  ( and Implementation )

The project was synthesized and implemented with Xilinx Vivado 2017.4. Creation of the project is done by sourcing the create_project.tcl script with proj\_afifo as the origin directory. Once the project is successfully created, generating the bitstream should start the build process.

