from cocotb          import test
from cocotb.triggers import Timer
from cocotb.result   import TestFailure, TestSuccess
from powlib.utils    import TestEnvironment
    
@test()
def test_top(dut):
    '''
    Performs a basic test of the proj_top module.    
    '''

    # Create the test environment.
    te = TestEnvironment(dut=dut.dut, name="testbench")

    # Add the clocks and resets.
    te._add_clock(clock=dut.sys_clock, period=(10,"ns"), phase=(0,"ns")) # 100 MHz clock
    te._add_reset(reset=dut.reset, associated_clock=dut.sys_clock, active_mode=0) 

    # Start the environment.
    yield te.start()        

    # Run the simulation for a while.
    yield Timer(100, "us")

    # Check for any errors.
    if int(dut.dut.leds.value)!=((1<<int(dut.dut.LW.value))-1):
      raise TestFailure()        
    raise TestSuccess()
    
    