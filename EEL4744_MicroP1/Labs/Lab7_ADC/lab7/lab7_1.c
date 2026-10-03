/*
 * lab7_1.c
 *
 * Created: 7/19/2026 11:07:50 PM
 * Author : Evan Baesler
 */ 

#include <avr/io.h>

void adc_init(void);

int main(void){
	
	int16_t adc_output;
	
	adc_init();
	
	while(1) {
		// Start conversion on CH0
		ADCA.CH0.CTRL |= ADC_CH_START_bm;
		
		// Wait for conversion to finish (check interrupt flag)
		while(!(ADCA.CH0.INTFLAGS & ADC_CH_CHIF_bm));
		
		// Store result and clear flag
		adc_output = ADCA.CH0.RES;
		ADCA.CH0.INTFLAGS = ADC_CH_CHIF_bm;	
	}
	
}

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
	ADCA.CTRLA = ADC_ENABLE_bm;
}