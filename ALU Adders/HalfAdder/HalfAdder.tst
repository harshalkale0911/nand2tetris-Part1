// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/2/HalfAdder.tst

load HalfAdder.hdl,
output-file HalfAdder.out,
compare-to HalfAdder.cmp,
output-list a b sum carry;

// Test case 1: a = 0, b = 0
set a 0,
set b 0,
eval,
output;

// Test case 2: a = 0, b = 1
set a 0,
set b 1,
eval,
output;

// Test case 3: a = 1, b = 0
set a 1,
set b 0,
eval,
output;

// Test case 4: a = 1, b = 1
set a 1,
set b 1,
eval,
output;
