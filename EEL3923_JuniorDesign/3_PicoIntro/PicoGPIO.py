from machine import Pin
from machine import Timer
from machine import PWM
import time

LEDtimer = Timer()

pin = Pin

# 28 GPIO, do not use pin 3, 8, 13, 18 on left (GND pins.)

# Buzzer: Pin 1 (GP0) -> 2 kHz operation (less than 1 ms T -> PWM)
# LED: Pin 5 (GP3) -> 2 Hz blinking operation
# Button: Pin 16 (GP12) -> Toggle for buzzer

buzzer = PWM(Pin(0))
buzzer.freq(2000)
buzzer.duty_u16(0) # 16-bit register where 2^16 = 65535 = 100%
                       # 32768 = 2^15 = 50% duty cycle

led = pin(3, pin.OUT)

button = pin(12, pin.IN, pin.PULL_UP)

buzzer_on = False
last_press = time.ticks_ms()

def timer_2Hz(timer):
    
    if not buzzer_on: 
        led.toggle()
        
    else:
        led.off()
    
def button_pressed(pin):
    global led_on
    global buzzer_on
    global last_press
    global frequency
    
    now = time.ticks_ms()

    if time.ticks_diff(now,last_press) < 200:
        return
    
    last_press = now

    if buzzer_on:
        buzzer.duty_u16(0)
        buzzer_on = False
    else:
        buzzer.duty_u16(32768)
        buzzer_on = True
        led.off()

LEDtimer.init(
    period = 250, # 500 ms = 1/2 sec = 2 Hz
    mode = Timer.PERIODIC,
    callback = timer_2Hz
)

button.irq(
    trigger = Pin.IRQ_FALLING,
    handler = button_pressed
)