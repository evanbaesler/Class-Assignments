;
; lab2_2.asm
;
; Created: 5/28/2026 12:43 PM
; Author : Evan Baesler

; ABSTRACT: This program functions as a simple way to do a flashing LED
;           with a 10ms period for on/off, with a 50% duty cycle. 

; NOTES: This program is made to be used with the OOTB uPAD and the
;        Switch and LED backpack. We are configuring the stack pointer
;        to the highest data memory address, 

; OBJECTIVES:
; (1) Designate I/O, the uPAD utilizes PC for our LED circuits
; (2) For active-low LED's, we must turn the output to 0 when we want
;     illumination. Which given the constraints of the switch being
;     closed, means we must have the LED read a 0 when the switch
;     outputs a 1.

.EQU DELAY_X = 0x01

.include "ATxmega128A1Udef.inc"

.cseg
.org 0
rjmp MAIN

.org 0x0100
MAIN:

ldi r16, low(RAMEND)
sts CPU_SPL, r16 ; We initialize the stack pointer to the end of our ram

ldi r16, high(RAMEND)
sts CPU_SPH, r16

ldi r16, 0x01 ; Loading a mask to cover PC as input

sts PORTC_DIRSET, r16 ; Sets DIR for PORTC pins to 0b11111111 making
					  ; them all outputs

LOOP_MAIN:

sts PORTC_OUTTGL, r16

rcall DELAY_X_10MS

rjmp LOOP_MAIN

; SUBROUTINES BELOW

DELAY_40MS:

; 10 ms at 2MHz: 
; 1 clock = 5us -> 10^-3/(5*10^-6) ~= 20000 clocks

push r21
push r22 ; push prior data of r21/r22 to prevent corruption of data
push r23 ; added to loop 10ms delay 4 times

ldi r23, 4 ; outer count

OUTER_LOOP:

ldi r22, 68 ; middle count

MIDDLE_LOOP: ; changed to middle loop after adding 4x count for 40ms delay

ldi r21, 100 ; Inner count

INNER_LOOP:

dec r21
brne INNER_LOOP ; dec & brne take 3 clocks total when branching
				; otherwise they take 2 clocks, with a count of 100
				; the branch is 99 * 3 + 1 * 2 clocks, or 299 clocks
				; 20000 / 299 ~= 66-67

dec r22
brne MIDDLE_LOOP ; loops = ~67
; 299 * 67) / (20000) = 1.00165 = 0.165% error, less than 3% allocated.

dec r23
brne OUTER_LOOP

pop r23
pop r22
pop r21 ; pop in reverse order, LIFO

ret

DELAY_X_10MS:

push r24
ldi r24, DELAY_X

LOOP_DELAY:

rcall DELAY_40MS
dec r24

brne LOOP_DELAY

pop r24

ret