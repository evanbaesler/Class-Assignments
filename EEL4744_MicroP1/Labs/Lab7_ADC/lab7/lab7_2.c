/*
 * lab7_2.c
 *
 * Created: 7/20/2026 6:38:19 PM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

int16_t adc_output = 0;

void tcc0_init(void);
void adc_init(void);

int main(void){
	
	PORTD.DIRSET = PIN5_bm | PIN6_bm;
	
	PORTD.OUTSET = PIN5_bm;
	PORTD.OUTCLR = PIN6_bm;
	
	tcc0_init();
	adc_init();
	
	sei();
	
	
	
	while(1){
		
	}
}

void tcc0_init(void){
	
	// Do NOT put a overflow interrupt, event system handles it
	TCC0.PER = 3125; // .1(2000000/64) = 3125
	TCC0.CTRLA = TC_CLKSEL_DIV64_gc; // .1(2000000/64) = 3125
	
	PMIC.CTRL = PMIC_LOLVLEN_bm; // Enable low-level interrupts
	
	EVSYS.CH0MUX = EVSYS_CHMUX_TCC0_OVF_gc; // Send TCC0 OVF to event system
}

 // From lab7_1, expanded

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

ISR(ADCA_CH0_vect){
	
	// Update ADC Output
	adc_output = ADCA.CH0.RES;
	
	// Toggle LEDs
	PORTD.OUTTGL = PIN5_bm | PIN6_bm;
	
}