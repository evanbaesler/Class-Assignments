/*
 * ExerciseX.asm
 *
 *  Created: 5/31/2026 10:17:39 PM
 *   Author: Evan Baesler
 *
 
 ABSTRACT: This program functions as an endless loop, outputting
           a digital clock in seconds, and minutes (minutes go to
		   infinity, seconds reset every 60 seconds)

 NOTES: This program is made to be used with the OOTB uPAD and the
        Switch and LED backpack.

 OBJECTIVES:
 (1) Designate I/O, the uPAD utilizes PC for our LED circuits
 (2) Toggle PORTC LED0 for seconds, PORTC LED1 for minutes
 (3) Store value of seconds in R20 and value of minutes in R21
 
 */ 

 .equ TICKS = 2000 - 1

.include "ATxmega128A1Udef.inc"
.cseg
.org 0
rjmp MAIN

.org 0x0100
MAIN:
ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16
ldi r16, 0b00000011
sts PORTC_DIR, r16

clr r20
clr r21

ldi r16, low(TICKS) ; In testing found to be 0x055e
sts TCC0_PER, r16
ldi r16, high(TICKS)
sts TCC0_PER+1, r16

ldi r16, TC_CLKSEL_DIV1024_gc ; Per doc8045, sets prescaler of 64
sts TCC0_CTRLA, r16

WATCH_LOOP: ;using r20 as seconds, r21 as minutes

lds r16, TCC0_INTFLAGS ; load the interrupt flags, section 14.12.10
sbrs r16, 0 ; skips the next line if the LSB (OVFIF) is set
rjmp WATCH_LOOP

ldi r16, 0x01
sts TCC0_INTFLAGS, r16 ; flags can be cleared by writing a one

inc r20

ldi r16, 0x01
sts PORTC_OUTTGL, r16

cpi r20, 60
brne WATCH_LOOP

clr r20
inc r21

ldi r16, 0b00000010
sts PORTC_OUTTGL, r16

rjmp WATCH_LOOP
