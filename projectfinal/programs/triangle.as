// compute the triangle numbers naively
// up to the 22nd triangle number (253)

// clear display
LDI r15 clear_number
STR r15 r0

// set number display to unsigned
LDI r15 unsigned_mode
STR r15 r0

LDI r13 0   // index
LDI r14 23  // upper bound
LDI r1 0    // sum

.loop
// bounds checking
CMP r13 r14
BRH eq  .out

// increment sum by index
ADD r1 r13 r2
MOV r1 r2

// show ith triangle number
LDI r15 show_number
STR r15 r1

// increment and jump
ADI r13 1
JMP .loop

.out
HLT
