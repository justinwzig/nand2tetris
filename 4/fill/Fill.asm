// This file is part of www.nand2tetris.org
// and the book "The Elements of Computing Systems"
// by Nisan and Schocken, MIT Press.
// File name: projects/04/Fill.asm

// Runs an infinite loop that listens to the keyboard input.
// When a key is pressed (any key), the program blackens the screen,
// i.e. writes "black" in every pixel;
// the screen should remain fully black as long as the key is pressed. 
// When no key is pressed, the program clears the screen, i.e. writes
// "white" in every pixel;
// the screen should remain fully clear as long as no key is pressed.

// Put your code here.

(VARS)
//Define some variables
//Define the screen position for the loop
@SCREEN
D=A
@pos
M=D

//Define the extent of the screen array (924575-16384=8191)
@8192
D=A
//Add it to the current position to get the end of the screen array
@pos
D=D+M
@screenSize
M=D

(CONTROL)
	@KBD
	D=M
	@WHITE
	D;JEQ
	@BLACK
	0;JMP

(BLACK) //Set one pixel to black
	@pos
	A=M
	M=-1
	
	//and increment the screen pointer
	@LOOP
	0;JMP

(WHITE) //one pixel to white
	@pos
	A=M
	M=0
	
	//increment pointer
	@LOOP
	0;JMP
	
(LOOP)
	@pos
	M=M+1
	D=M
	
	@screenSize
	D=D-M
	@CONTROL
	D;JNE
	
	@SCREEN
	D=A
	@pos
	M=D
	@CONTROL
	0;JMP