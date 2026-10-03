/*
 * lab7_3.c
 *
 * Created: 7/20/2026 9:45:32 PM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>

int8_t BSEL = 17;
int8_t BSCALE = -7; // 110400 bps
int16_t adc_output = 0;
volatile uint8_t adc_flag = 0;

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
			char sign = '+';
			
			if (data < 0){
				sign = '-';
				data = -data; // Remove two's comp so we can make it easier to read.
			}
			
			float voltage = ((float)data / 2048.0f) * 2.5f;
			int int1 = voltage;
			float voltage2 = 10.0f * (voltage - int1);
			int int2 = voltage2;
			float voltage3 = 10.0f * (voltage2 - int2);
			int int3 = voltage3;
			
			outstring("Transmitted Result: ");
			outchar(sign);
			outchar('0' + int1); // ASCII 0 + int lets us output a number
			outchar('.');
			outchar('0' + int2);
			outchar('0' + int3);
			outstring(" V (0x");
			
			// Output 3-digit Hex value
			char hex_chars[] = "0123456789ABCDEF"; // Treats as an array of hex_chars[i]
			
			outchar(hex_chars[(data >> 8) & 0x0F]); // Shifts hex to the right, and uses the byte value as
			outchar(hex_chars[(data >> 4) & 0x0F]); // a way to access hex_chars[i].
			outchar(hex_chars[data & 0x0F]);
			
			outstring(")\r\n");
		}
	}
}

void tcc0_init(void){
	
	// Do NOT put a overflow interrupt, event system handles it
	TCC0.PER = 3125; // .1(2000000/64) = 3125
	TCC0.CTRLA = TC_CLKSEL_DIV64_gc; // .1(2000000/64) = 3125
	
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