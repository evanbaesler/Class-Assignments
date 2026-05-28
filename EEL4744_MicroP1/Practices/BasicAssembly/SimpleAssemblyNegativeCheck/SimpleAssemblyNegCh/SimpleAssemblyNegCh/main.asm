;
; SimpleAssemblyNegCh.asm
;
; Created: 5/26/2026 1:43:32 PM
; Author : ebaes
;


; Replace with your application code
; Student Comments:
; we are going to import a table of 237 values
; this table will have x random values
; the program will decipher how many negative
; values there are in the table

.equ DATA_START = 0x8100

; input data (table of numbers)
.CSEG
.org DATA_START
INPUT_TABLE:
.dw -5, -12, 24, 37
END_INPUT_TABLE:

; output data (negative terms count)
.DSEG
.org 0x2000 ; start of SRAM ($2000 - $3FFF)
COUNT:
.byte 1

.CSEG
.org 0x0
rjmp MAIN

.CSEG
.org 0x0100
MAIN:
ldi ZL, low(INPUT_TABLE << 1) ; low bit of input to Z pointer
ldi ZH, high(INPUT_TABLE << 1) ; high bit of input to Z pointer

ldi XL, low(COUNT) ; low bit of output to X pointer
ldi XH, high(COUNT) ; not necessary, not 16-bit but future-proof!

ldi r17, 0 ; clearing r17 to store negative count

LOOP:

lpm r16, Z+
cpi r16, 0
BRMI NEGATIVE_FOUND
BREQ DONE
rjmp LOOP

NEGATIVE_FOUND:

subi r17, -1 ; add 1 to negative counter immediately
rjmp LOOP

DONE:
rjmp DONE