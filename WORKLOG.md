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

Redefined methods for collision -- working much better than yesterday

Issue with gravity mechanic is mostly fixed (no more center Character object)

Need to adjust rounding and methodology slightly, but idea works

Collisions mostly work, but updates per frame still interfering

### 05/31/24

Allowed temporary drop/stick mechanics

Much cleaner movement and collisions

Try to fix preventing movement through blocks

Make demo branch

Return type on collision

Collisions on borders nice EXCEPT on the right edge of block objects (rounding is weird -- look at it)

### 06/01/24

Spent the day debugging right collision to prevent phase thru

### 06/02/24

Fixed right collision with a stupid simple + 1 factor to adjust from round-down int value

No more jumping mid-air -- this prevents additive velocity and vertical phase thru of blocks (jump is now on keyReleased())

Admin key ('=') in Demo branch

More bug fixes overall


### 06/03/24

Starting new branch to check collision on buttonBlocks (associated block list to buttons)

### 06/04/24

Fixed buttonBlock collisions to act as normal blocks

Next: create static boolean variable to toggle on and off everytime we step on associated button

### 06/05/24

Reassembled button mechanic and their associated blocks -- the toggle relies on activation, and need a way to hide the associated block if not active

Not compiling

### 06/06/24

Mostly debugging -- compiles

Have to start with collisions of associated blocks off -- why?

Hiding the associated block is hard -- can only really change color to indicate collisions off

Toggle does work, but collisions now work weird

### 06/07/24

Fixed button block interactions -- start as collide

Toggle works, and black implies go through

### 06/08/24

Reworked gravity and buttons (working after death)

Jumppads work well

Work on debugging collisions and non-platform collisions from the top

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

### 5/30/2024

Added a button class and started to add to map1

Almost finished with button collision

### 5/31/2024 - 6/2/2024

Added logic for dying, collecting gems, buttons, and going the the next level

Buttons do not work exactly as expected however so that needs to be changed

Also need to add other stuff like wind and maybe rocks

Also need to clean up code, make similar codes into a function

### 6/3/2024 - 6/4/2024

Started on a map4 and cleaned up the code a bit by making functions for collision logic with different types of blocks

### 6/5/2024 - 6/6/2024

Finished map4. Also started a jumppad class.

### 6/7/2024 - 6/8/2024

Modified all 4 maps so they are beatable. Added a menu for when you beat the game and also a menu for choosing which map you want to pick. In the win menu, also added a timer and a gem counting system. 
