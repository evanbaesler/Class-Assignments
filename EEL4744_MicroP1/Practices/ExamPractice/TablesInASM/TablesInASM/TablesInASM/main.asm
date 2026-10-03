
;
; TablesInASM.asm
;
; Created: 8/4/2026 2:30:19 AM
; Author : ebaes
;


; Replace with your application code
.include "Atxmega128A1Udef.inc"
.org 0
jmp MAIN
.cseg
.org 0xD007
IN_TAB:
.db 0x03, 0x05, 0x30, 0x92, 0xAE, 0x37, 0x44, 0x37, 0x01 
IN_TAB_END:
.equ NUM_PAIRS = (IN_TAB_END - IN_TAB) / 2   ; floor-divide, drops trailing odd byte
.dseg
.org 0x2A0E
OUT_TAB:
.byte NUM_PAIRS * 3
.cseg 
MAIN:
ldi ZL, low(IN_TAB<<1)
ldi ZH, high(IN_TAB<<1)
ldi r16, byte3(IN_TAB<<1)
out CPU_RAMPZ, r16
ldi YL, low(OUT_TAB)
ldi YH, high(OUT_TAB)
ldi r20, NUM_PAIRS      ; loop counter, replaces the broken address compare
LOOP:
    ; Read two bytes from Flash
    lpm r16, Z+      ; first byte
    lpm r17, Z+      ; second byte
    ; Store them in reverse order
    st  Y+, r17
    st  Y+, r16
	add r16, r17
	st Y+, r16
    ; Have we processed all complete pairs?
    dec r20
    brne LOOP
DONE:
    rjmp DONE