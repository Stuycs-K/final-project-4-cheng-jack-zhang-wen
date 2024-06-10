[![Review Assignment Due Date](https://classroom.github.com/assets/deadline-readme-button-24ddc0f5d75046c5622901739e7c5dd533143b0c8e959d652212380cedb1ea36.svg)](https://classroom.github.com/a/syDSSnTt)
# APCS2 Final Project
## Group Info

Debug Thugs
- Wen Zhang
- Jack Cheng

## Overview

This project is an emulation of the platformer game FireBoy and Watergirl, where one character is controled with WASD (fireboy), and another character is controlled with the arrow keys (watergirl). The game contains four different maps that feature distinct mechanics, such as buttons and jumppads. You can choose to try different maps once you have completed a map already, or you can try the next map ordered by difficulty. There are gems that you can pick up along the path to completion, which will be counted in a score-like system once you finish a map. If you aren't satisfied with your time, you can try again later! There is no cap on time, nor is there a requirement for gems, so play as you wish.

You must avoid the pools that correspond to the opposite character (i.e. avoid water for fireboy, lava for watergirl, and poison for both) in order to survive. If you end up dead, you will respawn with the timers and gems reset. When you approach a button, you must step on top of the button to deactivate its associated platform. An associated platform is deactivated when colored black, and active if colored with the same color as its corresponding button. An active platform can be collided with, like any normal platform, but a deactivated platform has its collisions turned off. Certain platforms must be deactivated to open a path towards completion. When you approach a jumppad, just jump on top to apply a large boost to your vertical jump. This makes certain jumps possible, and opens a path towards completion.

## Instructions

Fireboy (red block):
- W: jump
- A: move left (with momentum)
- D: move right (with momentum)
- S: stop all horizontal momentum

Watergirl (blue block):
- UP: jump
- LEFT: move left (with momentum)
- RIGHT: move right (with momentum)
- DOWN: stop all horizontal momentum

Shortcuts:
- z for endscreen menu
- b to go to next map
- = to gain admin powers (infinite jump)

## Bugs

Sometimes you can stand on top of the gems/door if you are the opposite color, this shouldn't be a game breaking bug. You can somewhat avoid it if you collect the gem with the same color. 

## Link to Presentation

https://drive.google.com/file/d/1YqX7tjESbJlIJDQsOmD-K5RCZHFLiMJ3/view?usp=sharing 