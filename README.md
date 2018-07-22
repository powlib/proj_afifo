It should be noted that the behavoiral model of the xilinx_ip board design (i.e. Xilinx IP core bundle) was generated with the following command after synthesis of the design.


````
write_verilog -mode funcsim -include_xilinx_libs hdl/behav/xilinx_ip.v
````