// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Mult.asm

// Multiplies R0 and R1ores the result in R2.
// (R0, R1, R2 refer to RAM[0], RAM[1], and RAM[2], respectively.)

// Put your code here.

	@R1 and st
	D=M //d is the mutiplier
	@iter
	M=D // and now RAM[iter] = R1 (mutiply by, will be used in loop)
	
	@R2 //eqivalant of sum, is the result
	M=0 //set it to 0 just in case

	@END //checks if R1 is 0
	D;JEQ
	
	@R1
	D=M
	@END //checks if R2 is 0
	D;JEQ
	
(LOOP)

	//add R0 to R2 R1 times
	//subtract 1 from iter each iteration
	//detect if iter is 0, break the loop if it is 0
	
	
	@R0
	D=M 
	
	@R2
	M=D+M
	
	@iter
	M=M-1
	
	@iter
	D=M
	@0
	
	@END
	D;JEQ
	
	@LOOP
	0;JMP

(END)
	@END
	0;JMP