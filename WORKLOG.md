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

Jump is a lot nicer

New small issue: Character gets stuck a bit below the floor because gravity is still being applied -- can fix with setting velocity vector to zero when at height-radius


## Wen Zhang

### 5/23/2024 

Created a basic setup that generated a border for a template map and created template files with all the instance variables and methods for the map related class like platform and door.

### date y

info
