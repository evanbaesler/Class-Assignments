;
; SimpleAssembly.asm
;
; Created: 5/26/2026 9:37:58 AM
; Author : Evan Baesler

; Replace with your application code

; Student Comments
; We are making assembly to manipulate data in two tables
; An input table in program memory (.CSEG) and an output in data (.DSEG)

; Input starts sat 0xD007, and output at 0x2A0E, referred to as IN_TAB/OUT_TAB
; For all consecutive 8-bit pairs we will:
; (1) Load first pair from input table
; (2) Store each byte within the pair within the output table in reverse
; (3) Calculate the sum of the pair
; (4) Clear the MSB and set the LSB of the sum
; (5) Store this sum in the next output table location

; CONSTRAINTS:
; (1) We will skip to the end of the loop if both bytes in a pair are equivalent
; (2) Assume that there is at most 0x4AB pairs of 8-bit numbers in our input table.
; (3) Set up the entire input table before doing operations

.include "ATxmega128A1udef.inc"

.EQU IN_TAB = 0xD007
.EQU OUT_TAB = 0x2A0E

.CSEG
.org 0x0
jmp MAIN

; Creating our input table
.org IN_TAB
.dw 0x3444, 0x4422, 0x4744, 0x9285, 0x6767, 0x1337 ; ALWAYS use .dw for CSEG

; Done to size OUT_TAB
END_IN_TAB:

.DSEG
.org OUT_TABb
.BYTE (END_IN_TAB - IN_TAB) * 3 ; for every pair we have three outputs,
								; we rewrite the inputs reversed, and an operation

.CSEG
.org 0x1000
MAIN:
; Input Register Allocation
ldi ZL, low(IN_TAB << 1)
ldi ZH, high(IN_TAB << 1)
; We need RAMPZ since we are going to pass 4-bit limit if we have 0x4AB pairs
ldi r16, byte3(IN_TAB <<1)
out CPU_RAMPZ, r16

; Output Register Allocation
ldi XL, low(OUT_TAB)
ldi XH, high(OUT_TAB)

LOOP:

; Gets first byte
elpm r16, Z+
; Gets second byte
elpm r17, Z+

; Compares the two inputs, if they are equal we branch to end
cp r16, r17
breq DONE ; Works for 0x0000 or null, so we don't have any edge case

st X+, r17 ; st stores a register to a memory pointer, sts immediate
st X+, r16 ; we store r16/r17 to X and then increment after each storage

add r16, r17 ; Adds r16 and r17, placing result in r16
sbr r16, 0b00000001 ; sets LSB
cbr r16, 0b10000000 ; clears MSB
st X+, r16

rjmp LOOP

DONE:
	rjmp DONE