// Xor.tst - Test script for the XOR gate

load Xor.hdl;
output-file Xor.out;
output-list a b out;

// Test cases

set a 1,
set b 1,
eval,
output;

set a 1,
set b 0,
eval,
output;

set a 0,
set b 1,
eval,
output;

set a 0,
set b 0,
eval,
output;
