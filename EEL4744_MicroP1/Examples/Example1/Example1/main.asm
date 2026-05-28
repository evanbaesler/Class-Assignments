;
; Example1.asm
;
; Created: 5/19/2026 10:40:48 AM
; Author : ebaes
;
.include "ATxmega128A1udef.inc"

.cseg

; Define a table size (TabSize)
.equ TabSize = 10

; Start the program (skipping the early addresses)

.org 0x0000
	rjmp MAIN
	
; Define the table in PROGRAM memory (non-volatile)
.org 0x100
Table : .db 1,2,3,4,5,6,7,8,9,10

; Define space for the Total (sum of the table values) in DATA memory
.dseg
.org 0x2000
Total: .byte 1

; Just for fun, copy the original table into DATA memory
Outs: .byte TabSize

; Write the rest of the program (MAIN)
; First need to change back to PROGRAM memory

.cseg
MAIN:
; Point to the Table in Program memory
	ldi ZL, low(Table<<1)
	ldi ZH, high(Table<<1)

	; Create a counter and initialize it [use r16]
	ldi r16, TabSize

	; Clear running sum [use r17]
	clr r17

	; Point to a table in Data memory (for the copy) [use Y]
	ldi YL, low(Outs)
	ldi YH, high(Outs)

	; Go through the table [use r18 for data from table]
LOOP:
	; Load the value from the input table, then inc Z
	lpm r18, Z+
	; Copy input value to output table
	st Y+, r18

	; Add to running sum (in r17)
	add r17, r18

	; Decrement loop counter
	dec r16
	
	; If counter not equal to zero, repeat (at LOOP)
	brne LOOP
	; End of LOOP

	; Save the Total
	sts Total,  r17

	; Dog chasing tail
DONE:
	rjmp DONE