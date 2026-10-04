/*
 * calculations.asm
 *
 *  Created: 7/1/2026 2:14:49 PM
 *   Author: ebaes
 */ 

 .equ num = (47*10^-3)*(2*10^6)/(8)

 .org 0x100
 rjmp MAIN

 MAIN:
 ldi r16, num

 LOOP:
 rjmp LOOP

