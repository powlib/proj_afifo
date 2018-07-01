connect -url tcp:127.0.0.1:3121
targets -set -filter {jtag_cable_name =~ "Digilent Nexys4DDR 210292745510A" && level==0} -index 0
fpga -file /workspace/git_ws/proj_afifo/sdk/top_hw_platform_0/top.bit
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292745510A"} -index 0
rst -system
after 3000
targets -set -nocase -filter {name =~ "microblaze*#0" && bscan=="USER2"  && jtag_cable_name =~ "Digilent Nexys4DDR 210292745510A"} -index 0
dow /workspace/git_ws/proj_afifo/sdk/app/Debug/app.elf
bpadd -addr &main
