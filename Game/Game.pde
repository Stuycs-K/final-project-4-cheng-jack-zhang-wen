ArrayList<Character> charList;
ArrayList<Block> blocks;
int mapNumber = 1;
Map map;
Character center;
static double G = 60000;

void setup() {
  size(1200, 900);
  clearMap();
  map = new Map();
  blocks = map.MapOneBlocks();
  //CHANGE THIS
  //make an orb at the center of the screen with a mass of 100.
  //note: Orb Constructor parameters: x,y,xSpeed,ySpeed,radius,mass
  center = new Character(1200/2, 10000*height, 0, 0, 0, 80, 500000000, color(0), "Center");

  //DO NOT CHANGE THIS:
  charList = new ArrayList<Character>();
  charList.add(new Character(100, 100, 0, 0, 35, 35, 10, color(255, 0, 0), "Fire"));
  charList.add(new Character(100, 100, 0, 0, 35, 35, 10, color(0, 0, 255), "Water"));
}

/*
void mouseClicked() {
  orbList.add(new Orb(mouseX, mouseY, 3, 0, 20, 10));
  //orbList.add(new Orb(mouseX, mouseY, 0, 0, 20, 10));
}
*/
void clearMap(){
  blocks = new ArrayList<Block>();
}
    
void draw() {
  background(255);
  for (Character c : charList) {
    c.move();
    c.display();
    for (Block b : blocks) {
      if (b.checkCollisionTop(c)) {
        c.position.y = b.y - c.h;
      }
    }

    if (c.position.y >= height-c.h) {
      c.position.y = height - c.h;
    }

    
    if (c.velocity.x >= 10) {
      c.velocity.x = 10;
    }
    if (c.velocity.x <= -10) {
      c.velocity.x = -10;
    }
    
    for (Block b : blocks) {
      b.display();
      /*
      if ((c.position.y - c.radius/2 > b.getY() - b.getHeight()/2) && (c.position.y + c.radius/2 < b.getY() + b.getHeight()/2)) { //within block bounds Y
        if (b.checkCollisionSide(c)) {
          c.xBounce();
        }
      }
      if ((c.position.x - c.radius/2 < b.getX() + b.getWidth()/2) && (c.position.x + c.radius/2 > b.getX() - b.getWidth()/2)) { //within block bounds X
          //System.out.println((int)(c.position.y + c.radius));
          //System.out.println((int)(b.getY() - b.getHeight()/2));
        if (b.checkCollisionTop(c)) {
          c.position.y = b.getY() - b.getHeight()/2 - c.radius;
        }
      }
      */
      //c.xBounce();
    }
  }
}

/*
boolean checkCollisionTop(Character ch, Block bl) {
  if (ch.position.y + ch.radius == bl.getY() - bl.getHeight()/2) {
    return true;
  }
  return false;
}
*/

void keyPressed() {
  if(key == 'b'){
    mapNumber = (mapNumber + 1) % 4;
    changeMap(mapNumber);
  }
      if (key == 'w') {
        charList.get(0).velocity = (new PVector(0, -10));
      }
      if (key == 'a') {
        if (charList.get(0).velocity.x < 10) {
          (charList.get(0)).velocity.add(new PVector(-3, 0));
        }
      }
      if (key == 'd') {
        if (charList.get(0).velocity.x < 10) {
          (charList.get(0)).velocity.add(new PVector(3, 0));
        }
      }
      if (key == 's') {
        (charList.get(0)).velocity.x = 0;
      }
    
      if (key == CODED) {
        if (keyCode == UP) {
          charList.get(1).velocity = (new PVector(0, -10));
        }
        if (keyCode == LEFT) {
          if (charList.get(1).velocity.x < 10) {
            (charList.get(1)).velocity.add(new PVector(-3, 0));
          }
        }
        if (keyCode == RIGHT) {
          if (charList.get(1).velocity.x < 10) {
            (charList.get(1)).velocity.add(new PVector(3, 0));
          }
        }
        if (keyCode == DOWN) {
          (charList.get(1)).velocity.x = 0;
        }
      }
}

void changeMap(int mapNum){
   clearMap();
   if(mapNum == 1){
     blocks = map.MapOneBlocks();
   } else if(mapNum == 2){
     blocks = map.MapTwoBlocks(); 
   } else if(mapNum == 3){
     blocks = map.MapThreeBlocks(); 
   }
}
