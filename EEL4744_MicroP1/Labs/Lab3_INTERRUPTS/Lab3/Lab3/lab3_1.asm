/*
Lab3.asm
Created: 6/4/2026 9:46:41 AM
Author : Evan Baesler

ABSTRACT: We are utilizing timers to cause an overflow flag every 47ms
		  which will trigger an interrupt, strobing an LED (toggling GPIO.)

OBJECTIVES: (1) Initialize Stack Pointer at SRAM end.
			(2) Determine IO direction (singular pin)
			(2) Start timer with a 47ms loop
			(3) Check for OVFIF flag, and rjmp to an interrupt when checked
			(4) Clear flag
*/

.include "ATxmega128A1Udef.inc"

.org 0
rjmp MAIN

.org TCC0_OVF_vect
rjmp INTERRUPT

.org 0x0100
MAIN:

ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16
; Stack Pointer initialized, we can use subroutines for
; IO/TC initialization!

rcall IO_INIT
rcall TC_INIT
rcall PMIC_INIT
sei

LOOP:

rjmp LOOP

DONE:
rjmp DONE

; -----------
; SUBROUTINES
; -----------

IO_INIT:
push r16

ldi r16, 0x01
sts PORTC_DIRSET, r16 ; PORTC_DIR -> 0x01 -> Output on PC0

pop r16
ret


TC_INIT:
push r16

; SCF = 2MHz, PRE = 8, D = 47*10^-3, PER = 11750 Ticks
ldi r16, low(12050)
sts TCC0_PER, r16
ldi r16, high(12050)
sts TCC0_PER+1, r16 ; Set period of 47ms

ldi r16, TC_CLKSEL_DIV8_gc
sts TCC0_CTRLA, r16 ; Start counting with div8 prescaler

ldi r16, TC_OVFINTLVL_LO_gc
sts TCC0_INTCTRLA, r16 ; Set the TC to low priority interrupt

pop r16
ret

PMIC_INIT:
push r16

; Enable Low-Level Interrupts in the PMIC
ldi r16, PMIC_LOLVLEN_bm
sts PMIC_CTRL, r16

pop r16
ret
; ---------
; INTERRUPT
; ---------

INTERRUPT:
push r16
lds r17, CPU_SREG
push r17

ldi r16, 0x01
sts PORTC_OUTTGL, r16

pop r17
sts CPU_SREG, r17
pop r16
reti