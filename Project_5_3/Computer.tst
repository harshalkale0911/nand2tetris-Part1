// Load the Computer.hdl chip implementation
load Computer.hdl,

// Set output files for testing
output-file ComputerAdd.out,
compare-to ComputerAdd.cmp,

// Specify the output list with required values
output-list time%S1.3.1 reset%B2.1.2 ARegister[0]%D1.7.1 DRegister[0]%D1.7.1 
            PC[0..15]%D0.4.0 RAM16K[0]%D1.7.1 RAM16K[1]%D1.7.1 RAM16K[2]%D1.7.1;

// Perform initial clock cycles to ensure proper initialization
repeat 6 {
    tick, tock, output;
}

// Set reset to initialize the computer
set reset 1,
set RAM16K[0] 0,
tick, tock, output;

// Release reset and begin program execution
set reset 0,
repeat 6 {
    tick, tock, output;
}
