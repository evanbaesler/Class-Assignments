/*
 * lab4_3a.asm
 *
 *  Created: 6/16/2026 6:26:23 PM
 *   Author: Evan Baesler
 */ 

 /*
 * lab4_3.asm
 *
 *  Created: 6/16/2026 7:28:55 PM
 *   Author: Evan Baesler
 */ 
 ;

.equ SRAM_START_ADDR = 0xC58000
.equ IO_START_ADDR = 0xCE72C0

.include "ATxmega128A1Udef.inc"
.include "sram_data.asm"

.dseg
.byte DATA_SIZE

.cseg
ldi r16, low(RAMEND) ; Set up Stack Pointer (SP)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

.cseg
.org 0x01000
rjmp MAIN

MAIN:
rcall EBI_IO_INIT
rcall EBI_INIT
rcall TC_INIT

; Setup Flash Pointer (Z) and SRAM Pointer (Y)
ldi ZL, low(DATA << 1) ;
ldi ZH, high(DATA << 1)

ldi YL, low(SRAM_START_ADDR)
ldi YH, high(SRAM_START_ADDR)
ldi r16, byte3(SRAM_START_ADDR)
out CPU_RAMPY, r16 ; Needed for > 64KB addressing, 2^16

ldi XL, low(DATA_SIZE)
ldi XH, high(DATA_SIZE) ; Count size of data

WRITE_LOOP:

lpm r16, Z+ ; Load byte from Program Memory
st Y+, r16 ; Store byte to External SRAM
sbiw X, 1 ; Decrement Counter
brne WRITE_LOOP

; Reset pointers for Read Loop
ldi YL, low(SRAM_START_ADDR)
ldi YH, high(SRAM_START_ADDR)
ldi r16, byte3(SRAM_START_ADDR)
out CPU_RAMPY, r16

ldi XL, low(DATA_SIZE)
ldi XH, high(DATA_SIZE)

; Read SRAM data and output to Port K (LEDs)
READ_LOOP:
ld r17, Y+         ; Read from External SRAM
sts PORTK_OUT, r17 ; Send to IO port
rcall DELAY_300MS  ; Wait 300ms
sbiw X, 1 ; Subtract 1 from Counter
brne READ_LOOP

DONE:
rjmp DONE

; --- SUBROUTINES ---

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
sts EBI_CTRL, r16 ; AU 27.12, IFMODE[1:0]

; CS0 SETUP
ldi r16, 0b00011101 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 32Kb
sts EBI_CS0_CTRLA, r16
ldi r16, byte2(SRAM_START_ADDR) ; Load base address to upper bytes.
sts EBI_CS0_BASEADDR, r16
ldi r16, byte3(SRAM_START_ADDR)
sts EBI_CS0_BASEADDR+1, r16

; CS2 SETUP
ldi r16, 0b00001001 ; MODE[1:0], ASIZE[4:0], 27.11 AU
					; SRAM, 32Kb
sts EBI_CS2_CTRLA, r16
ldi r16, byte2(IO_START_ADDR) ; Load base address to upper bytes.
sts EBI_CS2_BASEADDR, r16
ldi r16, byte3(IO_START_ADDR)
sts EBI_CS2_BASEADDR+1, r16

pop r16
ret



TC_INIT:
push r16

; SCF = 2MHz, PRE = 64, D = 300*10^-3, PER = 9375 Ticks
ldi r16, low(9375)
sts TCC0_PER, r16
ldi r16, high(9375)
sts TCC0_PER+1, r16 ; Set period of 47ms

ldi r16, TC_CLKSEL_DIV64_gc
sts TCC0_CTRLA, r16 ; Start counting with DIV64 prescaler, AU 14.12

pop r16
ret

DELAY_300MS:
push r16

ldi r16, TC0_OVFIF_bm
sts TCC0_INTFLAGS, r16 ; Resets flag (stores 1 to flag)

OVF_CHECK:
lds r16, TCC0_INTFLAGS ; Loads flags
sbrs r16, TC0_OVFIF_bp ; Checks bit designated for OVFIF flag
rjmp OVF_CHECK

pop r16
ret

