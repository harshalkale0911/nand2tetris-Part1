// Dmux.tst - Test script for the DMux gate

load Dmux.hdl;
output-file Dmux.out;
output-list in sel a b;

// Test cases

set in 0, set sel 0, eval, output;
set in 1, set sel 0, eval, output;
set in 0, set sel 1, eval, output;
set in 1, set sel 1, eval, output;
