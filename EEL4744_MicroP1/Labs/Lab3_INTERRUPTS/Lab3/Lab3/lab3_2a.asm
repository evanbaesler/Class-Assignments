/*
Lab3.asm
Created: 6/7/2026 3:02:45 PM
Author : Evan Baesler

ABSTRACT: We are utilizing S1 on the OOTB SLB with interrupts to do a binary
		  counter from 0 - 255, and then resetting back down to 0; simultaneously
		  we will strobe our blue LED on and off every 47ms.

OBJECTIVES: (1) Initialize Stack Pointer at SRAM end.
			(2) Utilize subroutines to initialize IO & PMIC
			(3) Clear counter register (r20)
			(4) IO: Set PF2 in, PORTC out, invert PORTC, connect PF2 to LOLVL INT0
			(5) PMIC: Enable LOLVL interrupts
			(6) sei to do global interrupt enable
			(7) INTERRUPT: Push registers, push CPU_SREG to save flags, check if
			    r20 = 255, reset to 0 if true, increment r20 if false. Send value
				to PORTC LEDs; clear interrupt flags, restore CPU_SREG to initial
				value
*/

.include "ATxmega128A1Udef.inc"

.org 0
rjmp MAIN

.org PORTF_INT0_vect
rjmp INTERRUPT

.org 0x0100
MAIN:

ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

clr r20 ; clear counter
rcall IO_INIT
rcall TC_INIT
rcall PMIC_INIT
sei

LOOP:

lds r16, TCD0_INTFLAGS      ; Read the timer interrupt flags
sbrs r16, 0      ; Skip the toggle if the Overflow Flag (bit 0) is NOT set
rjmp LOOP              ; If flag is 0, keep looping

ldi r16, (1<<6)             ; Bit 6 for PD6 (Blue LED)
sts PORTD_OUTTGL, r16       ; Toggle the blue LED

ldi r16, 1 ; clear OVFIF by writing 1 to it
sts TCD0_INTFLAGS, r16

rjmp LOOP              ; Back to polling

DONE:
rjmp DONE

; SUBROUTINES

IO_INIT:
push r16
ldi r16, (1<<2) ; bit 2 for PORTF (PF2)
sts PORTF_DIRCLR, r16
ldi r16, 0xFF
sts PORTC_DIRSET, r16
ldi r16, (1<<6)
sts PORTD_DIRSET, r16

ldi r16, PORT_INVEN_bm
sts PORTC_PIN0CTRL, r16
sts PORTC_PIN1CTRL, r16
sts PORTC_PIN2CTRL, r16
sts PORTC_PIN3CTRL, r16
sts PORTC_PIN4CTRL, r16
sts PORTC_PIN5CTRL, r16
sts PORTC_PIN6CTRL, r16
sts PORTC_PIN7CTRL, r16

lds r16, PORTF_PIN2CTRL ; we do not want to overwrite any defaults for the register
andi r16, 0b11111000 ; setting 010 to ISC[2:0], to create falling-edge ctrl
ori r16, 0b00000010
sts PORTF_PIN2CTRL, r16

ldi r16, 0x01
sts PORTF_INTCTRL, r16 ; create low-level interrupt

ldi r16, (1<<2)
sts PORTF_INT0MASK, r16 ; sets pin 2 to interrupt 0 on PORTF

pop r16
ret

TC_INIT:
push r16
; Set the Timer Period to 11,750 cycles for a prescaler of 8, for 47ms period
ldi r16, low(11750)
sts TCD0_PER, r16
ldi r16, high(11750)
sts TCD0_PER+1, r16
ldi r16, TC_CLKSEL_DIV8_gc
sts TCD0_CTRLA, r16
pop r16
ret

PMIC_INIT:
push r16
ldi r16, PMIC_LOLVLEN_bm
sts PMIC_CTRL, r16
pop r16
ret

; INTERRUPT
INTERRUPT:
push r16
lds r16, CPU_SREG
push r16

inc r20 ; dedicated counting register
cpi r20, 255
brne NO_RESET
clr r20 ; reset
NO_RESET:
sts PORTC_OUT, r20
ldi r16, 1
sts PORTF_INTFLAGS, r16 ; clear INT0IF
pop r16
sts CPU_SREG, r16
pop r16
reti