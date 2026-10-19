# ---------------------------------
#   LTC1661 DAC Waveform Firmware
# ---------------------------------

# Written by Evan Baesler
# October 13, 2026
# For: Raspberry Pi Pico 2

# Abstract:
# This program runs on a Raspberry Pi Pico 2 to generate four waveform
# types (sinusoidal, square, triangular, and sawtooth) with variable
# frequency and amplitude based on inputs from potentiometers. The
# waveform switching is handled by two external switches, similar to a
# multiplexer/mux. Functionally, our LTC1661 can generate any of the
# four waveforms between 10Hz to 100Hz and 0V to 5V.

## SETUP

from machine import ADC, Pin, SPI
import math
import utime

# Pins are in terms of GPIO Ports

# LEGEND:
# XP = External Potentiometer to ADC

# Waveform Frequency (XP)
# Amplitude (XP)

# SPI pin configuration for Raspberry Pi Pico
spi = SPI(
    0,
    baudrate = 6000000,
    polarity = 0,
    phase = 0,
    bits = 8,
    firstbit = SPI.MSB,
    sck = Pin(6),
    mosi = Pin(3),
    miso = Pin(4)
)

# Chip select (active-low) for the DAC
cs = Pin(5, Pin.OUT)
cs.value(1)  # DAC initially deselected

# Switch Values
switch1 = Pin(14, Pin.IN)
switch2 = Pin(15, Pin.IN)

# ADC Pins
adc_freq = ADC(28)
adc_amp = ADC(26)

# WAVEFORM TABLE MATH

NUM_SAMPLES = 110
DAC_MAX = 1023

# Generate each table once during startup
sine_table = []
square_table = []
triangle_table = []
sawtooth_table = []

for i in range(NUM_SAMPLES):
    phase = i / NUM_SAMPLES

    # Sine: 0 -> maximum -> 0
    sine_value = (1 + math.sin(2 * math.pi * phase)) / 2
    sine_table.append(int(sine_value * DAC_MAX))

    # Square: high for first half, low for second half
    square_table.append(DAC_MAX if phase < 0.5 else 0)

    # Triangle: linear rise, then linear fall
    if phase < 0.5:
        triangle_value = 2 * phase
    else:
        triangle_value = 2 * (1 - phase)

    triangle_table.append(int(triangle_value * DAC_MAX))

    # Sawtooth: linear rise, then reset
    sawtooth_table.append(int(phase * DAC_MAX))

# Store references to all four tables
waveforms = [
    sine_table, # 00
    square_table, # 01
    triangle_table, # 10
    sawtooth_table # 11
]

## END SETUP

## SUBROUTINES

# ADC (returns averaged raw counts, 0-65535)
 
def adc_update(samples=1):
    vfreq_total = 0
    vamp_total = 0

    for i in range(samples):
        vfreq_total += adc_freq.read_u16()
        vamp_total += adc_amp.read_u16()

    freq_raw = vfreq_total // samples
    amp_raw = vamp_total // samples

    return freq_raw, amp_raw
 
 
 
# Write one 10-bit sample to the LTC1661 DAC

dac_buf = bytearray(2)

def dac_write(value):
    value = max(0, min(DAC_MAX, int(value)))
    word = (0b1001 << 12) | (value << 2)

    dac_buf[0] = (word >> 8) & 0xFF
    dac_buf[1] = word & 0xFF

    cs.value(0)
    spi.write(dac_buf)
    cs.value(1)

## END OF SUBROUTINES


## PROGRAM START

while True:

    # Read potentiometers
    freq_raw, amp_raw = adc_update()

    # Map frequency potentiometer to 10-100 Hz
    frequency = 10 + (freq_raw * 100 // 65535)

    # Map amplitude potentiometer to 0-1023 DAC counts
    amplitude = DAC_MAX * amp_raw // 65535 # amp_raw = 65535 -> DAC_MAX out

    # Read switches
    s1 = switch1.value()
    s2 = switch2.value()

    # Select waveform
    wave_select = (s1 << 1) | s2
    table = waveforms[wave_select]

    # Calculate time per sample
    sample_period_us = 1000000 // (frequency * NUM_SAMPLES)
    # Sample period in us = 1 / (frequency * samples per second)

    # Output one complete waveform cycle
    
    # Output one complete waveform cycle
    next_sample = utime.ticks_us()

    for sample in table:
        # Scale the sample for the selected amplitude
        dac_value = sample * amplitude // DAC_MAX

        # Write to the DAC
        dac_write(dac_value)

        # Advance the target time by exactly one sample period
        next_sample = utime.ticks_add(
            next_sample, sample_period_us
        )

        # Wait only until the scheduled deadline
        remaining = utime.ticks_diff(
            next_sample, utime.ticks_us()
        )

        if remaining > 0:
            utime.sleep_us(remaining)
    
    
## PROGRAM END