// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1 and stores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)
//
// This program only needs to handle arguments that satisfy
// R0 >= 0, R1 >= 0, and R0*R1 < 32768.

// Put your code here.

@i
M=1;
@sum
M=0

// Looping
(LOOP)
@i
D=M
@1
D=D-M
@STOP
D;JGT
@0
D=M
@sum
M=D+M
@i
// Increment M
M=M+1
@LOOP
// Inf lopp
0;JMP

(STOP)
@sum
D=M
@2
M=D

(END)
@END
// Inf loop
0;JMP
