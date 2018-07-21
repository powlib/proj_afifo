from cocotb          import test, coroutine, fork
from cocotb.triggers import Timer
from cocotb.result   import TestFailure, TestSuccess, ReturnValue
from powlib          import Transaction
from powlib.drivers  import SfifoDriver
from powlib.monitors import SfifoMonitor
from powlib.utils    import TestEnvironment
from random          import randint

    
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

    yield Timer(200, "ns")
        
    raise TestSuccess()
    
    