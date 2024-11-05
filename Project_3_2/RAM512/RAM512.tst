// RAM512.tst
// This test script tests the RAM512 chip
load RAM512.hdl
set clock 0
set address 0
set data 0b0000000000000000 // Set initial data to 0
set writeEnable 1
tick  // Load data into RAM512
set address 1
set data 0b0000000000000001
tick

set address 2
set data 0b0000000000000010
tick

set address 3
set data 0b0000000000000011
tick

set writeEnable 0 // Now read from RAM512
set address 0
tick // Read data from address 0
output dataOut // Should be 0b0000000000000000

set address 1
tick // Read data from address 1
output dataOut // Should be 0b0000000000000001

set address 2
tick // Read data from address 2
output dataOut // Should be 0b0000000000000010

set address 3
tick // Read data from address 3
output dataOut // Should be 0b0000000000000011
