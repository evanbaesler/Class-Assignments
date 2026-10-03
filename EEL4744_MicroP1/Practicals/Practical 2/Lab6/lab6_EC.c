/*
 * lab6_EC.c
 *
 * Created: 7/14/2026 5:48:49 PM
 *  Author: Evan Baesler
 */ 

#include <avr/io.h>
#include <avr/interrupt.h>
#include "spi.h"
#include "usart.h"
#include "lsm6dsl.h"
#include "lsm6dsl_registers.h"

void spi_init(void);
void LSM_init(void);
void usartd0_out_repeat(uint8_t *data, uint8_t length);

volatile uint8_t gyro_flag;
int8_t gyro_data[6] = {0, 0, 0, 0, 0, 0};

int main(void)
{
	spi_init();
	LSM_init();	
	usartd0_init();

	sei();

	while(1)
	{
		
		if (gyro_flag == 1)
		{
			// 1. READ DATA
			gyro_data[0] = LSM_read(OUTX_L_G);
			gyro_data[1] = LSM_read(OUTX_H_G);
			
			gyro_data[2] = LSM_read(OUTY_L_G);
			gyro_data[3] = LSM_read(OUTY_H_G);
			
			gyro_data[4] = LSM_read(OUTZ_L_G);
			gyro_data[5] = LSM_read(OUTZ_H_G);
			
			// 2. LITTLE ENDIAN USART
			
			usartd0_out_repeat(gyro_data, 6);
			
			// 3. RESET AND ENABLE FLAG
			gyro_flag = 0;
			PORTC.INT0MASK |= PIN6_bm;
		}
		
	}
	
}

// SUBROUTINES

void spi_init(void)
{
	
  /* Initialize the relevant SPI output signals to be in an "idle" state.
   * Refer to the relevant timing diagram within the LSM6DSL datasheet.
   * (You may wish to utilize the macros defined in `spi.h`.) */
  PORTF.OUTSET = SS_bm | SCK_bm;

  /* Configure the pin direction of relevant SPI signals. */
  PORTF.DIRSET = SS_bm | MOSI_bm | SCK_bm;
  PORTF.DIRCLR = MISO_bm;
	
  /* Set the other relevant SPI configurations. */
  SPIF.CTRL	=	SPI_PRESCALER_DIV16_gc    |
					    SPI_MASTER_bm	  |
					    SPI_MODE_3_gc     |
					    SPI_ENABLE_bm;
						// This leaves CTRL.DORD false, so MSB -> LSB
}

void LSM_init(void)
{
	LSM_write(CTRL3_C, 0x01); // SW_RESET FLAG, SELF CLEARS
	for(uint16_t i = 0; i < 2000; i++);
	
	LSM_write(CTRL3_C, (1<<5)); // SET INTERRUPT TO ACTIVE-LOW
	LSM_write(INT1_CTRL, (1<<1)); // ENABLE INT1_DRDY_G
	
	LSM_write(CTRL9_XL, 0); // DISABLE DEN IN DATA OUTPUT FOR HIGHER RES
	LSM_write(CTRL2_G, 0b01010010); // 208Hz, 125DPS
	// THIS MEANS 208 SAMPLES / SECOND
	
	PORTC.DIRCLR = PIN6_bm; // INT1 PIN
	PORTC.PIN6CTRL = PORT_ISC_LEVEL_gc; // LOW LEVEL INTERRUPT SENSE
	PORTC.INTCTRL = PORT_INT0LVL_LO_gc; // SET INT0 TO LO LVL INT
	PORTC.INT0MASK = PIN6_bm; // CONNECT PIN6 TO PORTC INT0
	PMIC.CTRL = PMIC_LOLVLEN_bm; // ENABLE LOLVL INT
}

void usartd0_out_repeat(uint8_t *data, uint8_t length)
{
	for (uint8_t i = 0; i < length; i++)
		{
			usartd0_out_char(data[i]);
		}
}

// INTERRUPTS

ISR(PORTC_INT0_vect)
{
	
	PORTC.INT0MASK &= ~PIN6_bm; // DISABLE INTERRUPT
	PORTC.INTFLAGS = 0x01; // RESET INTERRUPT FLAG
	
	gyro_flag = 1; // TELL USART DATA IS READY FOR TRANSMIT.

}