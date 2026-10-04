;
; lab1.asm
;
; Created: 5/24/2026 6:45:58 PM
; Author : Evan Baesler
;
; Replace with your application code:

;************************************************************************
;  File name: lab1.asm
;  Author:  Christopher Crary
;  Last Modified By: Dr. Schwartz
;  Last Modified On: 15 May 2026
;  Description: To filter data stored within a predefined input table 
;				based on a set of given conditions and store 
;				a subset of filtered values into an output table.
;************************************************************************
;*********************************INCLUDES*******************************
.include "ATxmega128a1udef.inc"
;***********END OF INCLUDES******************************
;*********************************EQUATES********************************
; potentially useful expressions
.equ NULL = 0
.equ ThirtySeven = 3*7 + 37/3 - (3-7)  ; 21 + 12 + 4 = 37, our FAVORITE NUMBER OF ALL TIME
.equ InputTableStart = 0xABBA
.equ OutputTableStart = 0x3744
;***********END OF EQUATES*******************************
;***********MEMORY CONFIGURATION*************************
; program memory constants (if necessary)
.cseg
.org InputTableStart ; As specified, the input table starts at 0xABBA
IN_TABLE:
.db 47, 0x98, 0b11110000, '#', 228, 0b10011000, 0xA2, 0b01000100, 'G', 210
.db	 '(', 0x67, 0145, 0xE2
.db 0b11011110, NULL ; important lesson! must put an even amount of terms per .db or you get a padding zero byte.
; label below is used to calculate size of input table
IN_TABLE_END:

; data memory allocation (if necessary)
.dseg
; initialize the output table starting address
.org OutputTableStart ; As specified, the output table starts at 0x3744
OUT_TABLE:
.byte (IN_TABLE_END - IN_TABLE)
;***********END OF MEMORY CONFIGURATION***************
;***********MAIN PROGRAM*******************************
.cseg
; configure the reset vector 
;	(ignore meaning of "reset vector" for now)
.org 0x0
	rjmp MAIN

; place main program after interrupt vectors 
;	(ignore meaning of "interrupt vectors" for now)
.org 0x100
MAIN:
; point appropriate indices to input/output tables (is RAMP needed?)
; ANSWER: yes, we need RAMP because we shift 16-bit values to the left
;		  and A<<1 is greater than F, which means we will need a 16th bit
	ldi ZL, low(IN_TABLE << 1)
	ldi ZH, high(IN_TABLE << 1)
	ldi r16, byte3(IN_TABLE << 1) ; loads the overflowed value to the 3rd byte
								  ; for RAMPZ
	out CPU_RAMPZ, r16 ; sends loaded byte3 from r16 to RAMPZ

; since our output starts at 0x3744, at it is already 8-bit, we do not shift
	ldi XL, low(OUT_TABLE)
	ldi XH, high(OUT_TABLE)

; loop through input table, performing filtering and storing conditions
LOOP:
	; load value from input table into an appropriate register
	elpm r16, Z+ ;loads with extended addressing
	; determine if the end of table has been reached (perform general check)
	cpi r16, NULL ; compares r16 to null, if r16 = null = 0, we branch to done
	; if end of table (EOT) has been reached, i.e., the NULL character was 
	; encountered, the program should branch to the relevant label used to
	; terminate the program (e.g., DONE)
	breq DONE

	; if EOT was not encountered, perform the first specified 
	; overall conditional check on loaded value (CONDITION_1)
CHECK_1:
	; check if the CONDITION_1 is met (bit 7 of # is set); 
	;   if not, branch to FAILED_CHECK1
	sbrs r16, 7 ; skips line below if bit 7 is SET
	rjmp FAILED_CHECK1 ; if bit 7 is not set, fail bit check and jump

	; since the CONDITION_1 is met, perform the specified operation
	;   (divide # by 2, unsigned)
	lsr r16
	; check if CONDITION_1a is met (result < 114); if so, then 
	;   jump to LESS_THAN_114; else store nothing and go back to LOOP
	cpi r16, 114 ; compares r16 - 114, and sets the carry flag if r16 is less than 114
	brlo LESS_THAN_114 ; branches to LESS_THAN_114 if the compare above says so
	rjmp LOOP

LESS_THAN_114:
	; add 3 and store the result
	subi r16, -3 ; found online that we can use the immediate subtraction with a negative
				 ; to effectively give us immediate addition, we could also load r17
				 ; with 3, and add the two using 'add', but this is much quicker!
	st X+, r16 ; stores r16 to X, post-increments X
 	rjmp LOOP
	
FAILED_CHECK1:
	; since the CONDITION_1 is NOT met (bit 7 of # is cleared),
	; check if CONDITION_2b is met (result >= 48); if so, jump to
	;    GREATER_EQUAL_48 (and do the next specified operation);
	;    else store nothing and go back to LOOP	

	cpi r16, 48
	brsh GREATER_EQUAL_48 ; branches if r16 is the same or higher than 48
	rjmp LOOP
	
GREATER_EQUAL_48:
	; subtract 2 and store the result 
	subi r16, 2 ; immediately subtracts 2 from r16
	st X+, r16 ; stores r16 to X, post-increments X
	;go back to LOOP
	rjmp LOOP
	
; end of program (infinite loop)
DONE: 
	rjmp DONE
;***********END OF MAIN PROGRAM **********************