ArrayList<Character>charList;
ArrayList<Block> blocks;
int mapNumber = 1;
Map map;
Character center;
static double G = 60000;

void setup() {
  size(1200, 900);
  clearMap();
  map = new Map();
  blocks = map.MapThreeBlocks();
  //CHANGE THIS
  //make an orb at the center of the screen with a mass of 100.
  //note: Orb Constructor parameters: x,y,xSpeed,ySpeed,radius,mass
  center = new Character(1200/2, 10000*height, 0, 0, 80, 500000000, color(0), "Center");

  //DO NOT CHANGE THIS:
  charList = new ArrayList<Character>();
  charList.add(new Character(100, 100, 0, 0, 20, 10, color(255, 0, 0), "Fire"));
  charList.add(new Character(100, 100, 0, 0, 20, 10, color(0, 0, 255), "Water"));
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
    if (c.position.y < height-c.radius) {
      c.applyForce(c.attractTo(center));
    }
    else {
      c.position.y = height-c.radius;
    }
    
    for (Block b : blocks) {
      if (checkCollisionTop(c, b)) {
        c.position.y = b.y - b.h/2 - c.radius;
      }
    }
  }
  
  for(Block b : blocks){ 
    b.display();
  }
  
}

boolean checkCollisionTop(Character ch, Block bl) {
  //float distX = (ch.position.x + bl.w/2) - (bl.x + ch.radius/2);
  if (ch.position.y + ch.radius == bl.y - bl.h/2) {
    return true;
  }
  return false;
  /*
  float distY = (ch.position.y + bl.h/2) - (bl.y + ch.radius/2);
  
  //float halfW = ch.radius/2 + bl.w/2;
  float halfH = ch.radius/2 + bl.h/2;
  
  //if (abs(distX) < halfW) {
    //and...
    if (abs(distY) < halfH) {
      return true;
    }
  //}
  
  return false;
  */
}



void keyPressed() {
  if(key == 'b'){
    mapNumber = (mapNumber + 1) % 3;
    changeMap(mapNumber);
  }
      if (key == 'w') {
        charList.get(0).applyForce(new PVector(0, -150));
      }
      if (key == 'a') {
        (charList.get(0)).position.add(new PVector(-10, 0));
      }
      if (key == 'd') {
        (charList.get(0)).position.add(new PVector(10, 0));
      }
    
      if (key == CODED) {
        if (keyCode == UP) {
          charList.get(1).applyForce(new PVector(0, -150));
        }
        if (keyCode == LEFT) {
          (charList.get(1)).position.add(new PVector(-10, 0));
        }
        if (keyCode == RIGHT) {
          (charList.get(1)).position.add(new PVector(10, 0));
        }
      }
}

void changeMap(int mapNum){
   clearMap();
   if(mapNum == 0){
     blocks = map.MapOneBlocks();
   } else if(mapNum == 1){
     blocks = map.MapTwoBlocks(); 
   } else if(mapNum == 2){
     blocks = map.MapThreeBlocks(); 
   }
}
