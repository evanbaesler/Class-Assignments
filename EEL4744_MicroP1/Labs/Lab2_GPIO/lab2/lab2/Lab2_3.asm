/*
 * Lab2_3.asm
 *
 *  Created: 5/31/2026 5:23:56 PM
 *   Author: Evan Baesler
 *

 ABSTRACT: This program functions as an endless loop, outputting
           the values of a our DIP switch circuits on the OOTB uPAD
           to their respective LED's, if an input switch is closed
           the LED illuminates, vice versa

 NOTES: This program is made to be used with the OOTB uPAD and the
        Switch and LED backpack.

 OBJECTIVES:
 (1) Designate I/O, the uPAD utilizes PC for our LED circuits
 (2) For active-low LED's, we must turn the output to 0 when we want
     illumination. Which given the constraints of the switch being
     closed, means we must have the LED read a 0 when the switch
     outputs a 1.
 (3) We want to have a precise 44ms delay utilizing timer counters
     such as TCO/1, so we need to find the amount of ticks needed for
	 44ms:

		PER = 0.044 * (2M / 64) = 1375 ticks -> 1375 - 1 = 1374
  */

.equ TICKS = 1412

.include "ATxmega128A1Udef.inc"

.cseg
.org 0
rjmp MAIN

.org 0x0100
MAIN:

; Stack Pointer Initialization:
ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16 ; Stack Pointer to RAMEND

; Output Designation:
ldi r16, 0x01
sts PORTC_DIRSET, r16 ; Sets 1 bit of PortC as output

ldi r16, low(TICKS) ; In testing found to be 0x055e
sts TCC0_PER, r16
ldi r16, high(TICKS)
sts TCC0_PER+1, r16

ldi r16, TC_CLKSEL_DIV64_gc ; Per doc8045, sets prescaler of 64
sts TCC0_CTRLA, r16

CHECK_LOOP:

lds r16, TCC0_INTFLAGS ; load the interrupt flags, section 14.12.10

sbrs r16, 0 ; skips the next line if the LSB (OVFIF) is set
rjmp CHECK_LOOP

ldi r16, 0x01
sts PORTC_OUTTGL, r16

sts TCC0_INTFLAGS, r16 ; flags can be cleared by writing a one

rjmp CHECK_LOOP