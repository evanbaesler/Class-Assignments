;
; Lab5.asm
;
; Created: 7/4/2026 3:48:55 PM
; Author : Evan Baesler
;

.include "ATXmega128A1Udef.inc"

.equ B_SEL = 299
.equ B_SCALE = -7

.org 0
rjmp MAIN

.org 0x100
MAIN:

ldi r16, low(RAMEND)
sts CPU_SPL, r16
ldi r16, high(RAMEND)
sts CPU_SPH, r16

rcall USART_INIT

LOOP:
ldi r17, 'U'
rcall OUT_CHAR
rjmp LOOP

; --SUBROUTINES-- ;
USART_INIT:
push r16

; Set the TxD pin high (PORTx_OUT) (PORTD3)
ldi r16, (1<<3)
sts PORTD_OUT, r16

; Set the TxD pin as output
sts PORTD_DIRSET, r16

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
ori r16, 0b00001000 ; Enable Rx/Tx without changing previous defaults
sts USARTD0_CTRLB, r16

; Set up Interrupts in CTRLA (NOT UTILIZED HERE)

pop r16
ret


OUT_CHAR:
push r16

WAIT:
; We check the STATUS register for DREIF, which tells us the current
; transmission is done when the flag goes high. (bit 5)
lds r16, USARTD0_STATUS
sbrs r16, USART_DREIF_bp
rjmp WAIT

sts USARTD0_DATA, r17 ; Data input from main loop

pop r16
ret
