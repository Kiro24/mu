# from typing import List
from machine import Pin
import time


# g,f,a,b,e,d,c
display_list = [12,13,14,27,26,25,33]

# decP = p4 = Pin(22, Pin.IN, Pin.PULL_UP)
incP = p4 = Pin(23, Pin.IN, Pin.PULL_UP)
rstP = p4 = Pin(22, Pin.IN, Pin.PULL_UP)


def setPin(arrSeg):
    for i in range(len(display_list)):
        p = Pin(display_list[i], Pin.OUT)

        p.value(arrSeg[i])
    return None


i = 0
while 1:




    switcher = [
        # g,f,a,b,e,d,c
        [0,1,1,1,1,1,1],
        [0,0,0,1,0,0,1],
        [1,0,1,1,1,1,0],
        [1,0,1,1,0,1,1],
        [1,1,0,1,0,0,1],
        [1,1,1,0,0,1,1],
        [1,1,1,0,1,1,1],
        [0,0,1,1,0,0,1],
        [1,1,1,1,1,1,1],
        [1,1,1,1,0,1,1]
    ]

    print('inc:',incP.value())
    # print('dec:',decP.value())
    if not incP.value():
        i += 1
    # if not decP.value():
    #     i -= 1
    if not rstP.value():
        i = 0

    if i > 9:
        i = 0
    elif i < 0:
        i = 9
    
    setPin(switcher[i])
    time.sleep_ms(500)
