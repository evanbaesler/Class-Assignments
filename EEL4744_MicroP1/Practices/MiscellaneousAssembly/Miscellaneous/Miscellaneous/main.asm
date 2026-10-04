;
; Miscellaneous.asm
;
; Created: 7/1/2026 2:09:23 PM
; Author : Evan Baesler
;


; Replace with your application code
.include "ATxmega128A1Udef.inc"

.org 0x100
rjmp MAIN

MAIN:
ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

rcall IO_INIT
rcall TC_INIT
sei

LOOP:
lds r16, TCC0_INTFLAGS
sbrs r16, 0
rjmp LOOP

ldi r16, 0xFF
sts PORTC_OUTTGL, r16
ldi r16, 1
sts TCC0_INTFLAGS, r16

rjmp LOOP

DONE:
rjmp DONE

IO_INIT:
push r16
ldi r16, 0xFF
sts PORTC_DIRSET, r16
sts PORTC_OUTCLR, r16
pop r16
ret

TC_INIT:
push r16
; D = 47ms, PRE = 8 SCF = 2MHz: PER = 11750
ldi r16, low(11750)
sts TCC0_PER, r16
ldi r16, high(11750)
sts TCC0_PER+1, r16

ldi r16, TC_CLKSEL_DIV8_gc
sts TCC0_CTRLA, r16
pop r16
ret