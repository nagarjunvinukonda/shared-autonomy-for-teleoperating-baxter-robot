# import pygame as pg

# # initialize joystick
# pg.joystick.init()
# joysticks = [pg.joystick.Joystick(x) for x in range(pg.joystick.get_count())]

# print(joysticks)

# # joystick = pg.joystick.Joystick(0)
# try:
#     joystick = joysticks[0]
#     joystick.init()
# except:
#     print("No joysticks connected")
#     exit()

# for i in range(joystick.get_numaxes()):
#     print(joystick.get_axis(i))

# for i in range(joystick.get_numbuttons()):
#     print(joystick.get_button(i))

from evdev import InputDevice, categorize, ecodes

gamepad = InputDevice('/dev/input/event19')

#prints out device info at start
print(gamepad)

#evdev takes care of polling the controller in a loop
for event in gamepad.read_loop():
    print(categorize(event))