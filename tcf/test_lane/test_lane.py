from cocotb          import test
from cocotb.triggers import Timer
from cocotb.result   import TestFailure, TestSuccess
from powlib.utils    import TestEnvironment
    
@test()
def test_lane(dut):
    '''
    Performs a basic test of the proj_lane module.
    '''

    # Create the test environment.
    te = TestEnvironment(dut=dut.dut, name="testbench")

    # Add the clocks and resets.
    te._add_clock(clock=dut.genclk, period=(7,"ns"), phase=(0,"ns"))
    te._add_reset(reset=dut.genrst, associated_clock=dut.genclk)
    te._add_clock(clock=dut.chkclk, period=(5,"ns"), phase=(0,"ns"))
    te._add_reset(reset=dut.chkrst, associated_clock=dut.chkclk)    

    # Start the environment.
    yield te.start()        

    # Run the simulation for a while.
    yield Timer(300, "ns")

    # Check for any errors.
    if dut.dut.errflg0.value!=0:
      raise TestFailure()        
    raise TestSuccess()
    
    