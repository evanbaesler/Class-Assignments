;
; SimpleAssemblyMulti.asm
;
; Created: 5/26/2026 12:41:57 PM
; Author : Evan Joseph Baesler
;


; Replace with your application 
; Student Comments:
; we want to have an input table with octal pairs, where the two are multiplied
; together without using built in multiplication/shifting functions

; CONSTRAINTS:
; (1) values are within r16 and r17, and are unsigned 4-bit values
; (2) we store the output in r19

; we will use the first value as our multiple, and our second value as our count
; we will then add the multiple for count times to the register 19, storing when
; count = 0

.CSEG
.org 0x0
jmp MAIN

; program memory input storage (16-bit)
.org 0x2000
IN_TABLE:
.db 07, 03, 05, 04, 02, 00, 00, 00, 01, 02 ; SPECIFICALLY using .db for octal data
IN_TABLE_END: ; used to allocate data storage

; data memory output storage
.DSEG
.org 0x2000 ; Start at SRAM ($2000 to $3FFF)

OUT_TABLE:
.byte (IN_TABLE_END - IN_TABLE)

.CSEG
.org 0x1000
MAIN:

ldi ZL, low(IN_TABLE << 1) ; Z is our input pointer
ldi ZH, high(IN_TABLE << 1)

ldi XL, low(OUT_TABLE) ; X is our output pointer
ldi XH, high(OUT_TABLE)

NEXT:

lpm r16, Z+ ; loads first input (multiple), increments for future iterations
lpm r17, Z+ ; loads second input (count), increments for future iterations
ldi r19, 0 ; clear r18

cpi r16, 0
BREQ CHECKNULL

LOOP:

cpi r17, 0 ; checks if count is 0
BREQ STORE

add r19, r16 ; adds a multiple of input to r18
subi r17, 1 ; decrements count

rjmp LOOP

STORE:
st X+, r19
rjmp NEXT

CHECKNULL:
cpi r17, 0
BREQ DONE
BRNE NEXT

DONE:
rjmp DONE