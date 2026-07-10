/*
 * TESTING.asm
 *
 *  Created: 5/31/2026 5:39:49 PM
 *   Author: Evan Baesler
 */ 

.cseg
.org 0x0

rjmp MAIN

.org 0x0100
MAIN:
ldi r16, low(1374)
ldi r17, high(1374)

ldi r16, low(1561)
sts TCC0_PER, r16

ldi r16 high(1561
sts TCC0_PER+1, r16

clr r16
sts TCC0_CNT, r16
sts TCC0_CNT+1, r16

