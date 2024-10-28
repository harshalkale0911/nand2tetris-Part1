// Test file for Not.hdl

load Not.hdl;             // Load the HDL file
output-file Not.out;      // Specify output file
output-list in out;       // Display input in and output out

// Test case 1: in = 1
set in 1;
eval;
output;

// Test case 2: in = 0
set in 0;
eval;
output;
