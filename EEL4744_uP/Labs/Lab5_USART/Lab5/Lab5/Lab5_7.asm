/*
 * Lab5_7.asm
 *
 *  Created: 7/5/2026 7:44:43 PM
 *   Author: Evan Baesler
 */ 

 .equ B_SEL = 299
 .equ B_SCALE = -7

 ; Use USART initialization from previous sections
.org 0
rjmp MAIN

.org USARTD0_RXC_vect
rjmp INTERRUPT

MAIN:
ldi r16, (1<<6) ; PD6 (BLUE_PWM) as an output
sts PORTD_DIRSET, r16

ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

rcall USART_INIT
rcall TC_INIT
rcall PMIC_INIT

sei
LOOP:

lds r16, TCC0_INTFLAGS ; Read the polling timer interrupt flags
sbrs r16, 0 ; Skip the toggle if the OVF (bit 0) is NOT set
rjmp LOOP ; If flag is 0, keep looping

ldi r16, (1<<6)
sts PORTD_OUTTGL, r16

ldi r16, 1 ; clear OVFIF by writing 1 to it
sts TCC0_INTFLAGS, r16
rjmp LOOP

; SUBROUTINES & INTERRUPTS
PMIC_INIT:
push r16
ldi r16, PMIC_LOLVLEN_bm
sts PMIC_CTRL, r16
Pop r16
Ret



USART_INIT:
push r16

; Set the TxD/RxD pin high (PORTx_OUT) (PORTD[4:3])
ldi r16, 0b00011000
sts PORTD_OUT, r16

; Set the TxD pin as output
ldi r16, (1<<3)
sts PORTD_DIRSET, r16
ldi r16, (1<<4)
sts PORTD_DIRCLR, r16

; Select BSCALE and BSEL in BAUDCTRLA/B for 37,440 bps
; Math Shown on PDF in Pseudocode, derived for BSCALE = -7, BSEL = 299
; BAUDCTRLA = BSEL[7:0]
; BAUDCTRLB = BSCALE[3:0] : BSEL[11:8]
; BSCALE = 1001 = -7 in 2's Comp
; BSEL = 256 + 32 + 8 + 2 + 1 = 2^8 + 2^5 + 2^3 + 2^1 + 2^0
; BAUDCTRLA = 00101011
; BAUDCTRLB = 10010001
ldi r16, low(B_SEL)
sts USARTD0_BAUDCTRLA, r16
ldi r16, ((B_SCALE << 4) | high(B_SEL))
sts USARTD0_BAUDCTRLB, r16

; Set the frame format / mode in CTRLC
; In NON-SPI:
; CTRLC = CMODE[1:0] : PMODE[1:0] : SBMODE : CHSIZE[2:0]
; CMODE = 00 for Asynchronous
; PMODE = 10 for Even Parity
; SBMODE = 0 for 1 Stop Bit
; CHSIZE = 011 for 8-bit data
ldi r16, (USART_CMODE_ASYNCHRONOUS_gc | USART_PMODE_EVEN_gc | USART_CHSIZE_8BIT_gc)
sts USARTD0_CTRLC, r16

; Enable the transmit/receive in CTRLB (CTRLB[4:3]) 4 = RXEN, 3 = TXEN
lds r16, USARTD0_CTRLB
ori r16, 0b00011000 ; Enable Rx/Tx without changing previous defaults
sts USARTD0_CTRLB, r16

; Set up Interrupts in CTRLA (NOT UTILIZED HERE)
ldi r16, USART_RXCINTLVL_LO_gc
sts USARTD0_CTRLA, r16

pop r16
ret



OUT_CHAR:
push r16

WAIT_OUT:
; We check the STATUS register for DREIF, which tells us the current
; transmission is done when the flag goes high. (bit 5)
lds r16, USARTD0_STATUS
sbrs r16, USART_DREIF_bp
rjmp WAIT_OUT

sts USARTD0_DATA, r17 ; Data input from main loop
pop r16
ret



TC_INIT:
push r16
; Set the Timer Period to 31,250 cycles for a prescaler of 64, for 1s period
ldi r16, low(31250)
sts TCC0_PER, r16
ldi r16, high(31250)
sts TCC0_PER+1, r16
ldi r16, TC_CLKSEL_DIV64_gc
sts TCC0_CTRLA, r16
pop r16
ret



INTERRUPT:
push r16
lds r16, CPU_SREG
push r16

lds r17, USARTD0_DATA ; read directly rather than waiting
					  ; to prevent holding up loop
   
rcall OUT_CHAR

pop r16
sts CPU_SREG, r16
pop r16
reti

