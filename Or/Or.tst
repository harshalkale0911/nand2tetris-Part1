// Test file for Or.hdl

load Or.hdl;              // Load the HDL file
output-file Or.out;       // Specify output file
output-list a b out;      // Display inputs a, b, and output out

// Test case 1: a = 0, b = 0
set a 0;
set b 0;
eval;
output;

// Test case 2: a = 0, b = 1
set a 0;
set b 1;
eval;
output;

// Test case 3: a = 1, b = 0
set a 1;
set b 0;
eval;
output;

// Test case 4: a = 1, b = 1
set a 1;
set b 1;
eval;
output;
