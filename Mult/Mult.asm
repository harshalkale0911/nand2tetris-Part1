// mult.asm
// Multiplies the values in RAM[0] and RAM[1] and stores the result in RAM[2].

@0          // Load RAM[0] (multiplier) into D
D = M       // D = RAM[0]
@R3         // Set R3 to 0 to use it as a counter
M = 0       // R3 = 0 (counter)
@2          // Set RAM[2] to 0 (this will store the result)
M = 0       // RAM[2] = 0

// Loop start
(LOOP)
  @0        // Load RAM[0] (multiplier) into D
  D = M     // D = RAM[0]
  @R3       // Load the counter (R3) into A
  D = D - M // D = D - R3
  @END      // If D == 0, jump to END (we’re done)
  D;JEQ     // If multiplier == counter, end loop

  @1        // Load RAM[1] (multiplicand) into D
  D = M     // D = RAM[1]
  @2        // Load RAM[2] (current result) into A
  M = M + D // RAM[2] = RAM[2] + RAM[1]

  @R3       // Increment counter (R3)
  M = M + 1 // R3 = R3 + 1
  @LOOP     // Jump back to LOOP
  0;JMP     // Repeat the loop

// End of program
(END)
@END        // Loop endlessly at END
0;JMP
