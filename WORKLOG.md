# Work Log

## Jack Cheng


### 5/23/24

The first and most important step in creating

Fireboy and Watergirl is gravity and movement

Imported gravity from the orb classwork, and reorganized class names/functionality Started 'w', 'a', and 'd' movements for fireboy, UP, LEFT, and RIGHT movements for watergirl via keypressed in the Game class

Moved a lot of the movement mechanics into the Character class as opposed to keeping it in Game, but setup remains in the Game class

Movement horizontally working Started working with gravity; works good


### 05/24/24

Started methodology of jump (just applyForce with a force vector up) 

Jump should have higher y-component

Need to prevent characters from sinking straight down

### 05/25/24

Prevented sinking via the Game class

Jump is a lot nicer (works in the correct direction, and actually feels like a jump with a higher y-component magnitude for the force)

Left-right movements induce a larger position change

No sinking after the jump from gravity interference (a continued force for even just a frame)

### 05/26/24

Redesigned the center Character such that left-right drift is barely noticable (since it WILL alter gameplay)

### 05/27/24

Added checkCollisionTop which works theoretically, but not working in game

### 05/28/24

Moved checkCollisionTop to the Block class; now added a bound to ensure that an equivalent value could be found (floats with discrete frame updates prevented the == method from working)

Something wrong with the round to ten -- fix other time

### 05/29/24

Trying new methodologies for collision (on sides, bottom, velocity x and y set to 0, respectively)

Maybe change Character to square

### 05/30/24

Characters as squares

Redefined methods for collision -- rounding error and maybe some other error is interfering, but working much better than yesterday

Issue with gravity mechanic


## Wen Zhang

### 5/23/2024 

Created a basic setup that generated a border for a template map and created template files with all the instance variables and methods for the map related class like platform and door.

### 5/25/2024

Finished Map#1 design with different borders and color

Need to create more maps and incorporate other designs on the map such as lava, pool, and other puzzle parts

### 5/26/2024

Added lava, pool, and green puddles to Map1

Need to add more maps 

### 5/27/2024

Made lava, pool, green puddles, platforms, and doors all under one subclass to make it easier to display and change

Finished Map#2 layout

Added a button to cycle between map

Need to do collisions

### 5/28/2024

Almost done with map3 during class

Finished map3 at home

### 5/29/2024

Added a new gem class for gem collections

Added gems to map 1-3

Need to create a button and wind class
