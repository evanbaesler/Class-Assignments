/*
 * lab4_3.asm
 *
 *  Created: 6/16/2026 7:28:55 PM
 *   Author: Evan Baesler
 */ 
 ;

.equ SRAM_START_ADDR = 0xC58000
.equ IO_START_ADDR = 0xCE72C0
.equ DATA_VAL = 0x04
.equ DATA_VAL2 = 0x07 ; :)

.include "ATxmega128A1Udef.inc"

ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

.cseg
.org 0x0100
rjmp MAIN

MAIN:
rcall EBI_IO_INIT
rcall EBI_INIT

ldi YL, low(SRAM_START_ADDR)
ldi YH, high(SRAM_START_ADDR)
ldi r16, byte3(SRAM_START_ADDR)
out CPU_RAMPY, r16

LOOP:
ldi r16, DATA_VAL
st Y, r16 ; Stores base address

ldi r16, DATA_VAL2
std Y+1, r16 ; Stores by displacement, looping thru same addresses

ld r17, Y ; Loads base address
ldd r18, Y+1 ; Loads by displacement, looping thru same addresses

rjmp LOOP

DONE:
rjmp DONE

; SUBROUTINES:
EBI_IO_INIT:
push r16

ldi r16, 0b01010011 ; Sets active-low outputs as false (RE, WE, CS0/2)
sts PORTH_OUTSET, r16
ldi r16, (1<<2)
sts PORTH_OUTCLR, r16 ; Sets active-high outputs as false (ALE1)
ldi r16, 0b01010111
sts PORTH_DIRSET, r16 ; Enables control outputs
ldi r16, 0xFF
sts PORTK_DIRSET, r16 ; Enables outputs

pop r16
ret


EBI_INIT:
push r16

ldi r16, 1 ; 8-bit data bus
sts EBI_CTRL, r16 ; IFMODE[1:0], AU 27.12

; CS0 SETUP
ldi r16, 0b00011101 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 32Kb
sts EBI_CS0_CTRLA, r16
ldi r16, byte2(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR, r16
ldi r16, byte3(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR+1, r16

; CS2 SETUP
ldi r16, 0b00001001 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 32Kb
sts EBI_CS2_CTRLA, r16
ldi r16, byte2(IO_START_ADDR)
sts EBI_CS2_BASEADDR, r16
ldi r16, byte3(IO_START_ADDR)
sts EBI_CS2_BASEADDR+1, r16

pop r16
ret