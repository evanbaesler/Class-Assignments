;
; Lab4.asm
;
; Created: 6/16/2026 4:39:45 PM
; Author : Evan Baesler
;

.equ SRAM_START_ADDR = 0xC58000
.equ IO_START_ADDR = 0xCE72C0

.include "ATxmega128A1Udef.inc"

ldi r16, low(RAMEND) ; Stack Pointer initialization
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

.cseg
.org 0x0100
rjmp MAIN

MAIN:
rcall EBI_IO_INIT
rcall EBI_INIT

ldi XL, low(IO_START_ADDR) ; Point to IO Start
ldi XH, high(IO_START_ADDR)
ldi r16, byte3(IO_START_ADDR)
out CPU_RAMPX, r16

LOOP:
ld r16, X ; Load X (/RE enabled)
st X, r16 ; Store X (/WE enabled)

rjmp LOOP

DONE:
rjmp DONE

; SUBROUTINES:
EBI_IO_INIT:
push r16 ; Preserve Register

ldi r16, 0b01010011
sts PORTH_OUTSET, r16 ; Sets RE, WE, CS0, CS2 as false.

ldi r16, (1<<2)
sts PORTH_OUTCLR, r16 ; Sets ALE1 as an false to be output from the XMega.

ldi r16, 0b01010111 ; Initializes outputs for WE,RE,ALE1,CS0,CS2
sts PORTH_DIRSET, r16

ldi r16, 0xFF
sts PORTK_DIRSET, r16 ; Sets addresses to be output from the microcontroller.

pop r16
ret

EBI_INIT:
push r16

ldi r16, 1 ; 8-bit data bus
sts EBI_CTRL, r16 ; EBI CTRL IFMODE[1:0], AU 27.12 (VERY USEFUL)

; CS0 SETUP
ldi r16, 0b00011101 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 32Kb
sts EBI_CS0_CTRLA, r16
ldi r16, byte2(SRAM_START_ADDR) ; Load the upper bytes base address.
sts EBI_CS0_BASEADDR, r16
ldi r16, byte3(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR+1, r16

; CS2 SETUP
ldi r16, 0b00001001 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 1Kb
sts EBI_CS2_CTRLA, r16
ldi r16, byte2(IO_START_ADDR) ; Load the upper bytes base address.
sts EBI_CS2_BASEADDR, r16
ldi r16, byte3(IO_START_ADDR)
sts EBI_CS2_BASEADDR+1, r16

pop r16
ret