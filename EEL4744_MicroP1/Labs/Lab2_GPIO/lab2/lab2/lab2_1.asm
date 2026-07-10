;
; lab2_1.asm
;
; Created: 5/28/2026 10:20:43 AM
; Author : Evan Baesler

; ABSTRACT: This program functions as an endless loop, outputting
;           the values of a our DIP switch circuits on the OOTB uPAD
;           to their respective LED's, if an input switch is closed
;           the LED illuminates, vice versa

; NOTES: This program is made to be used with the OOTB uPAD and the
;        Switch and LED backpack.

; OBJECTIVES:
; (1) Designate I/O, the uPAD utilizes PA for our DIP switches, and PC
;     for our LED circuits
; (2) For active-low LED's, we must turn the output to 0 when we want
;     illumination. Which given the constraints of the switch being
;     closed, means we must have the LED read a 0 when the switch
;     outputs a 1.

.include "ATxmega128A1Udef.inc"

.cseg
.org 0x100
rjmp MAIN

MAIN:

ldi r16, 0b11111111 ; Loading a mask to cover PA/PC as input/output
sts PORTA_DIRCLR, r16 ; Sets DIR for PORTA pins to 0b00000000, making
                      ; them all inputs

sts PORTC_DIRSET, r16 ; Sets DIR for PORTC pins to 0b11111111 making
					  ; them all outputs

lds r16, PORTA_IN

sts PORTC_OUT, r16

rjmp MAIN

