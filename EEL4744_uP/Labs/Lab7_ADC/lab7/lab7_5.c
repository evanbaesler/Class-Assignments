/*
 * lab7_5.c
 *
 * Created: 7/21/2026 6:21:19 PM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

int8_t BSEL = 17;
int8_t BSCALE = -7; // 110400 bps
int16_t adc_output = 0;
volatile uint8_t adc_flag = 0;
char usart_input = 0;

void tcc0_init(void);
void adc_init(void);
void usartd0_init(void);
void outchar(char c);
void outstring(const char *str);

int main(void){
	
	tcc0_init();
	adc_init();
	usartd0_init();
	
	sei();
	
	while(1){
    if(adc_flag){
        adc_flag = 0;
        
        int16_t data = adc_output;
        
        // Send low byte, then high byte (or vice-versa depending on endianness)
        outchar(data & 0xFF);        // Low byte
        outchar((data >> 8) & 0xFF); // High byte
    }
	}
}

void tcc0_init(void){
	
	// Do NOT put a overflow interrupt, event system handles it
	TCC0.PER = 1612; // (1/155)(2000000/8) ~= 1612
	TCC0.CTRLA = TC_CLKSEL_DIV8_gc; // (1/155)(2000000/8) ~= 1612
	
	PMIC.CTRL = PMIC_LOLVLEN_bm; // Enable low-level interrupts
	
	EVSYS.CH0MUX = EVSYS_CHMUX_TCC0_OVF_gc; // Send TCC0 OVF to event system
}

// From lab7_1

void adc_init(void) {
	// Set 2.5V voltage reference on PB
	ADCA.REFCTRL = ADC_REFSEL_AREFB_gc;
	
	// 12-bit signed ADC, right-adjusted with signed mode conversion
	ADCA.CTRLB = ADC_CONMODE_bm | ADC_RESOLUTION_12BIT_gc;
	
	// Set clock prescaler
	ADCA.PRESCALER = ADC_PRESCALER_DIV512_gc;
	
	// Select positive and negative inputs (Use DIFF w/ 1x Gain for pin support)
	// Pin1 = CDS+, Pin6 = CDS-
	ADCA.CH0.MUXCTRL = ADC_CH_MUXPOS_PIN1_gc | ADC_CH_MUXNEG_PIN6_gc;
	
	// Set gain & enable the channel / module
	ADCA.CH0.CTRL = ADC_CH_GAIN_1X_gc;
	ADCA.CH0.CTRL |= ADC_CH_INPUTMODE_DIFFWGAIN_gc;
	
	// Enable ADC low-level interrupt
	ADCA.CH0.INTCTRL = ADC_CH_INTLVL_LO_gc;

	// Allow event system control to use channels 0-3, do conversion on CH0
	ADCA.EVCTRL = ADC_EVSEL_0123_gc | ADC_EVACT_CH0_gc; 
		
	// Enable ADC :)
	ADCA.CTRLA = ADC_ENABLE_bm;
	
}

void usartd0_init(void){
	PORTD.OUTSET = PIN3_bm; // TxD set high
	PORTD.DIRSET = PIN3_bm; // TxD output
	PORTD.DIRCLR = PIN4_bm; // RxD input
	
	USARTD0.BAUDCTRLA = BSEL;
	USARTD0.BAUDCTRLB = (BSCALE << 4);
	
	// Asynchronous, 8 data bits, ODD parity, 1 stop bit
	USARTD0.CTRLC = USART_CMODE_ASYNCHRONOUS_gc | USART_PMODE_ODD_gc | USART_CHSIZE_8BIT_gc;
	
	USARTD0.CTRLB = USART_TXEN_bm | USART_RXEN_bm; 
	USARTD0.CTRLA = USART_RXCINTLVL_LO_gc;
}

void outchar(char c){
	while(!(USARTD0.STATUS & USART_DREIF_bm));
	USARTD0.DATA = c;
}

void outstring(const char *str){
	for(uint8_t i = 0; str[i] != 0; i++){
		outchar(str[i]);
	}
}

ISR(ADCA_CH0_vect){
	
	// Update ADC Output
	adc_output = ADCA.CH0.RES;
	adc_flag = 1;
	
}

ISR(USARTD0_RXC_vect){
	
	usart_input = USARTD0.DATA;
	
	if (usart_input == ('P' | 'p')){
		
		ADCA.CH0.MUXCTRL = ADC_CH_MUXPOS_PIN1_gc | ADC_CH_MUXNEG_PIN6_gc;
		
	}
	
	else if (usart_input == ('W' | 'w')){
		
		ADCA.CH0.MUXCTRL = ADC_CH_MUXPOS_PIN5_gc | ADC_CH_MUXNEG_PIN4_gc;
		
	}
	
}