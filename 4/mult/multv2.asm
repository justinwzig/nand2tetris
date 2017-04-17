//Revise Mult.asm (MultV2.asm) to optimize the performance by multiplying the greater value with the lesser value.  
//For this version, the smaller number between R0 and R1 is used to determine how many times to add the other number thus reducing the number of loops.  
//For example, Given input 3 and 5, the computation will always be 5+5+5, rather than 3+3+3+3+3.  

//Also:
//Store the number of loops in var counter.  By default, counter is set @ RAM[16]
//Do not  modify values stored in R[0] and R[1].  The result will be stored in R[2] or @product

//setup

	@R2 //eqivalant of sum, is the result
	M=0 //set it to 0 just in case
	@counter //make sure the counter is 0
	M=0
	
//0 Checking
	
	@R0
	D=M
	@END //checks if R0 is 0
	D;JEQ
	
	@R1
	D=M
	@END //checks if R1 is 0
	D;JEQ
	
//Figure out which is greater
	
	@R0 //r1 = d
	D=M
	
	@R1 //subtract R1-R0
	D=M-D
	
	@ADD1 //if D is greather than or eq to 0, means that R2 is greater, jump to add 1
	D;JGE
	
	@ADD2 //if D is less than 0, means r1 is greater, send to Add 2
	D;JLT
	


//Adds the value R1 R0 times
(ADD1)
	//subtract 1 from iter each iteration
	//detect if iter is 0, break the loop if it is 0
	
	@R0
	D=M //d is the mutiplier
	@counter
	M=D // and now RAM[iter] = R0 (mutiply by, will be used in loop)D=M 
	
(ADD1LOOP)

	@R1
	D=M
	
	@R2
	M=D+M
	
	@counter //subtract one iteration.
	M=M-1
	
	@counter //test iterations remaining
	D=M
	
	@END //jump to end if iter is 0
	D;JEQ
	
	@ADD1LOOP
	0;JMP
	
	
//Adds the value R0 R1 times
(ADD2)
	//subtract 1 from iter each iteration
	//detect if iter is 0, break the loop if it is 0
	
	@R1
	D=M //d is the mutiplier
	@counter
	M=D // and now RAM[iter] = R1 (mutiply by, will be used in loop)D=M 
	
(ADD2LOOP)

	@R0
	D=M
	
	@R2
	M=D+M
	
	@counter //subtract one iteration.
	M=M-1
	
	@counter //test iterations remaining
	D=M
	
	@END //jump to end if iter is 0
	D;JEQ
	
	@ADD2LOOP
	0;JMP

(END)
	@END
	0;JMP