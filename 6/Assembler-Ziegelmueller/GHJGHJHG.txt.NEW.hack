15-0 if A, 1 if C
Two muxes: first mux instruction with OutALU, sel = c

WhiteM if C and 0
DAddress if C and 1
AAddress if A or 2 AND C -- means that there is a c opertion that requires it to be written to A

Second mux - A address Out, in M sel=12
ALU combines D and A/M Mux
AM12
zx, nx, zy, f, no

Only jump if it's a C
PC-inc = 1, Load = jumpResult 