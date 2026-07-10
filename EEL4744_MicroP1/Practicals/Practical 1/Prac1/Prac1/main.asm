;
; Prac1.asm
;
; Created: 7/1/2026 3:41:10 PM
; Author : Evan Baesler
;


; Replace with your application code

.include "ATXmega128A1Udef.inc"

.equ IO_START_ADDR = 0x6000
.equ IO_START_ADDR_2 = 0x8000
.equ SRAM_START_ADDR = 0x12000
.equ TEST1 = 0x5FFF ; First of Range - 1
.equ TEST2 = 0x6000 ; First of Range
.equ TEST3 = 0x12000 ; End of Range
.equ TEST4 = 0x12001 ; End of Range + 1

.org 0
rjmp MAIN

.org TCC0_OVF_vect
rjmp FLICKER

.org 0x100
MAIN:
ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

rcall IO_INIT
rcall EBI_IO_INIT
rcall EBI_INIT
rcall TC_INIT
rcall PMIC_INIT
sei

ldi YL, low(IO_START_ADDR)
ldi YH, high(IO_START_ADDR)
ldi r16, byte3(IO_START_ADDR) ; one before
out CPU_RAMPY, r16


LOOP:

lds r16, PORTA_IN
sbrs r16, 0
rjmp PA_OFF ; if PA[0] is off, jump

; ON
ldi r16, 0b10000001
sts PORTJ_DIRSET, r16
ld r17, Y+
rjmp LOOP


PA_OFF:
; OFF
; set as input
ldi r16, 1
sts PORTJ_DIRCLR, r16


rjmp LOOP

DONE:
rjmp DONE

; SUBROUTINES BELOW ;
IO_INIT:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, 1
sts PORTA_DIRCLR, r16 ; Allow input for conditional waveform
pop r16
sts CPU_SREG, r16
pop r16
ret

EBI_IO_INIT:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, 0b11010011 ; Sets active-low outputs as false (RE, WE, CS0/2/3)
sts PORTH_OUTSET, r16
ldi r16, (1<<2)
sts PORTH_OUTCLR, r16 ; Sets active-high ALE1 as false

ldi r16, 0b1000001 ; D[7] & D[0] given output capability
sts PORTJ_DIRSET, r16
sts PORTJ_OUTCLR, r16

ldi r16, 0b11010111
sts PORTH_DIRSET, r16
ldi r16, 0xFF
sts PORTK_DIRSET, r16 
pop r16
sts CPU_SREG, r16
pop r16
ret

EBI_INIT:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, 1
sts EBI_CTRL, r16 ; 8-bit data bus

; CS0
ldi r16, 0b00011101 ; 32KB SRAM
sts EBI_CS0_CTRLA, r16
ldi r16, byte2(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR, r16
ldi r16, byte3(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR+1, r16

; CS2
ldi r16, 0b00010101 ; 8K SRAM
sts EBI_CS2_CTRLA, r16
ldi r16, byte2(IO_START_ADDR)
sts EBI_CS2_BASEADDR, r16
ldi r16, byte3(IO_START_ADDR)
sts EBI_CS2_BASEADDR+1, r16

; CS3
ldi r16, 0b00011001 ; 8K SRAM
sts EBI_CS2_CTRLA, r16
ldi r16, byte2(IO_START_ADDR_2)
sts EBI_CS2_BASEADDR, r16
ldi r16, byte3(IO_START_ADDR_2)
sts EBI_CS2_BASEADDR+1, r16

pop r16
sts CPU_SREG, r16
pop r16
ret

TC_INIT:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, low(1500) ; 174 ms @ 1024 PRE, 2MHz = PER of 54375
                    ; PER/2 = 27187.5, rounded up
sts TCC0_PER, r16
ldi r16, high(1500)
sts TCC0_PER+1, r16

ldi r16, TC_OVFINTLVL_LO_gc
sts TCC0_INTCTRLA, r16

ldi r16, TC_CLKSEL_DIV1024_gc
sts TCC0_CTRLA, r16

pop r16
sts CPU_SREG, r16
pop r16
ret

PMIC_INIT:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, PMIC_LOLVLEN_bm
sts PMIC_CTRL, r16

pop r16
sts CPU_SREG, r16
pop r16
reti

; INTERRUPT ;
FLICKER:
push r16
ldi r16, CPU_SREG
push r16

ldi r16, 1
sts TCC0_INTFLAGS, r16

ldi r16, 0b10000001
sts PORTJ_OUTTGL, r16

pop r16
sts CPU_SREG, r16
pop r16
reti