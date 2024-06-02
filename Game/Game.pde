ArrayList<Character> charList;
ArrayList<Block> blocks;
ArrayList<Block> buttonBlocks;
int mapNumber = 1;
Map map;
static double G = 60000;

void setup() {
  size(1200, 900);
  clearMap();
  map = new Map();
  blocks = map.MapThreeBlocks();
  frameRate(60);


  //DO NOT CHANGE THIS:
  charList = new ArrayList<Character>();
  charList.add(new Character(100, 100, 35, 35, color(255, 0, 0), "Fire"));
  charList.add(new Character(100, 100, 35, 35, color(0, 0, 255), "Water"));
}

void clearMap(){
  blocks = new ArrayList<Block>();
}
    
void draw() {
  background(255);
  for (Character c : charList) {
    c.move();
    c.display();
    for (Block b : blocks) {
      if (b.checkCollisionTop(c, 20)) {
        c.acceleration.y = 0;
        c.velocity.y = 0;
      }
      if(b.getType().equals("Button")){
         Button button = (Button) b;
         Platform attachedPlatform = button.getPlatform();
         if(button.buttonCollision(c)){
           System.out.println("Collided");
           buttonBlocks.add(attachedPlatform);
         } else {
           buttonBlocks.remove(attachedPlatform);
         }
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
    }
    /*
    
    for(Block b : buttonBlocks){
      b.display(); 
    }
    */
  }
}


void keyPressed() {
  if(key == 'b'){
    mapNumber = (mapNumber + 1) % 3;
    changeMap(mapNumber);
  }
      if (key == 'w') {
        charList.get(0).velocity = (new PVector(0, -20));
      }
      if (key == 'a') {
        if (charList.get(0).velocity.x < 5) {
          (charList.get(0)).position.add(new PVector(-2, 0));
          (charList.get(0)).velocity.add(new PVector(-1, 0));
        }
      }
      if (key == 'd') {
        if (charList.get(0).velocity.x < 5) {
          (charList.get(0)).position.add(new PVector(2, 0));
          (charList.get(0)).velocity.add(new PVector(1, 0));
        }
      }
      if (key == 's') {
        (charList.get(0)).velocity.x = 0;
      }
    
      if (key == CODED) {
        if (keyCode == UP) {
          charList.get(1).velocity = (new PVector(0, -20));
        }
        if (keyCode == LEFT) {
          if (charList.get(1).velocity.x < 5) {
            (charList.get(1)).position.add(new PVector(-2, 0));
            (charList.get(1)).velocity.add(new PVector(-1, 0));
          }
        }
        if (keyCode == RIGHT) {
          if (charList.get(1).velocity.x < 5) {
            (charList.get(1)).position.add(new PVector(2, 0));
            (charList.get(1)).velocity.add(new PVector(1, 0));
          }
        }
        if (keyCode == DOWN) {
          (charList.get(1)).velocity.x = 0;
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
