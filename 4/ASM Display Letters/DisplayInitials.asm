//Instructions:
    //Write a hack assembly program that reads a resident character in ASCII code from the KBD at RAM[24576].  The program then draws that character of your design font style, within a rectangular block of 16 pixels (1 RAM address location) by 16 rows of pixels [16 RAM address locations] on the top left of the @SCREEN.  To evenly space and to avoid dealing with two complement values that this hack machine can’t yet handle [Max value is 24575], you must set at least one or more of the rightmost columns [pixels] to 0s.  Also add spaces [0] around the top and right of the letter as padding/buffering
        //[100 pts] For this assignment, you need to decode and draw any of the two (2) [common] initials of your and  your partner’s names when the key is pressed.  The other not common character can be replaced with an emoticon of your choice
            //if any of the two letters is pressed repeatedly, it will draw the letters, one at a time, and will fill the entire row with 32 characters.  
            //When a Backspace key is pressed, the most recent [right most] character will be erased, one at a time back to the original first cell on the top left of the screen [@SCREEN].  
        //[Challenging: + 50 points] For this assignment, your program will be able draw any of the two or more characters on the entire screen, up to 16 rows of 32 characters each.  When a Backspace key is pressed, the most recent character will be erased, one at a time from the bottom row, back to the original cell [@SCREEN]. 

@currentCursor
M=0
@currentCursorInLine
M=0
@currentLine
M=0
@currentCursorInLineBack
M=0


@KBDDETECT
0;JMP

(KBDDETECT)

    @KBD
    D=M
    @129
    D=D-A
    @BACKSPACE
    D;JEQ //backspace
    
    @KBD
    D=M
    @74
    D=D-A
    @DRAWJ
    D;JEQ //J

    @KBD
    D=M
    @61 //=
    D=D-A
    @DRAWSMILE
    D;JEQ //smile
    
    @KBD
    D=M
    @32 //[space]
    D=D-A
    @SPACE
    D;JEQ //space
    
    //jump back to the top of the kbd detect
    @KBDDETECT
    0;JMP

(DRAWJ)
    @currentCursor
    D=M
    @SCREEN
    M=D
    A=D+A
    
    //Row 1 SPECIAL
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    
    //Row 2
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 3
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 4
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 5
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 6
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 7
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 8
    @32
    A=A+D
    D=A
    @address
    M=D
    @7168
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 9
    @32
    A=A+D
    D=A
    @address
    M=D
    @7224
    D=A
    @address
    A=M
    M=D
    D=A
 
    //Row 10
    @32
    A=A+D
    D=A
    @address
    M=D
    @7224
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 11
    @32
    A=A+D
    D=A
    @address
    M=D
    @8184
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 12
    @32
    A=A+D
    D=A
    @address
    M=D
    @4080
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 13
    @32
    A=A+D
    D=A
    @address
    M=D
    @2016
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 14
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 15
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    @NEXTCHAR
    0;JMP
    
    
(DRAWSMILE)
    @currentCursor
    D=M
    @SCREEN
    M=D
    A=D+A
    
    //Row 1 SPECIAL
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A

    //Row 2
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 3
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 4
    @32
    A=A+D
    D=A
    @address
    M=D
    @112
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 5
    @32
    A=A+D
    D=A
    @address
    M=D
    @7792
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 6
    @32
    A=A+D
    D=A
    @address
    M=D
    @7792
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 7
    @32
    A=A+D
    D=A
    @address
    M=D
    @7680
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 8
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 9
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 10
    @32
    A=A+D
    D=A
    @address
    M=D
    @12300
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 11
    @32
    A=A+D
    D=A
    @address
    M=D
    @14364
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 12
    @32
    A=A+D
    D=A
    @address
    M=D
    @8184
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 13
    @32
    A=A+D
    D=A
    @address
    M=D
    @4080
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 14
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 15
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    //Row 16
    @32
    A=A+D
    D=A
    @address
    M=D
    @0
    D=A
    @address
    A=M
    M=D
    D=A
    
    @NEXTCHAR
    0;JMP
    
(SPACE)
	@currentCursor
	D=M
	@SCREEN
	M=D
	A=D+A
	
	//Row 1 SPECIAL
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A

	//Row 2
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 3
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 4
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 5
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 6
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 7
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 8
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 9
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 10
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 11
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 12
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 13
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 14
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 15
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 16
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
        
    @NEXTCHAR
    0;JMP
    
(BACKSPACE)
    @currentCursor //find the current cursor location (numeric, second char wold equal 2)
    D=M
    @currentCursorBack
    M=D-1
    D=M
    @SCREEN //go to screen
    M=D
    A=D+A //go to screen + current Cursor

    //Row 1 SPECIAL
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A

	//Row 2
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 3
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 4
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 5
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 6
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 7
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 8
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 9
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 10
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 11
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 12
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 13
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 14
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 15
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	//Row 16
	@32
	A=A+D
	D=A
	@address
	M=D
	@0
	D=A
	@address
	A=M
	M=D
	D=A
	
	@currentCursorBack //reset for next run
	M=0
	
	@currentCursor // subtract 1 from the cursor so it's in the right position to type over the backspaced character
	M=M-1
	
	@currentCursorInLine
	M=M-1
        
    @BACKCHAR
    0;JMP

(BACKCHAR)

    @currentCursorInLine
    D=M
    
    @currentCursorInLineBack
    M=D-1
    D=M
    
    @32
    D=D-A
    @PREVIOUSLINE
    D;JEQ
    
	
    //ARBITRARY DELAY
    @8000
    D=A
    @delayNum
    M=D    
    
    @DELAYNEXT
    0;JMP
	
(NEXTCHAR)
    
    @currentCursor
    M=M+1
    
    //check for 32
    @currentCursorInLine
    M=M+1
    D=M

    @32
    D=D-A
    @NEXTLINE
    D;JEQ

    //ARBITRARY DELAY
    //@8000
    //D=A
    //@delayNum
    //M=D    
    
    @DELAYNEXT
    0;JMP

(DELAYNEXT)
    
    //@delayNum
    //M=M-1
    //D=M
    
    //@DELAYNEXT
    //D;JGT
    
    @KBDDETECT
    0;JMP
    
    
//BACKSPACE STUFF
    
(PREVIOUSLINE)
    //reset currentCursorInlineBack
    @32
    D=A
    @currentCursorInLineBack
    M=D
	
    //Set currentCursorInLine to 32 because that's where the next character will be typed
    @32
    D=A
    @currentCursorInLine
    M=D

	
    //Decremement the current line by one
    @1
    D=A
    @currentLine
    M=M-D
	
    @480
    D=A
    @currentCursor
    M=M-D
    
    @KBDDETECT
    0;JMP
	
(NEXTLINE)

    //reset CurrentCursorInLine
    @currentCursorInLine
    M=0
    
    //Increment the current line by one line
    @1
    D=A
    @currentLine
    M=M+D
    
    @480
    D=A
    @currentCursor
    M=D+M
    
    @KBDDETECT
    0;JMP