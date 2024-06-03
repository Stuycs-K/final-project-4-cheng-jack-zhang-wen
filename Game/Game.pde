ArrayList<Character> charList;
ArrayList<Block> blocks;
ArrayList<Block> buttonBlocks;
public static boolean blueOnDoor = false;
public static boolean redOnDoor = false;
public static int mapNumber = 0;
Map map;
static double G = 60000;

void setup() {
  size(1200, 900);
  clearMap();
  map = new Map();
  buttonBlocks = new ArrayList<Block>();
  blocks = map.MapOneBlocks(buttonBlocks);
  frameRate(60);


  //DO NOT CHANGE THIS:
  charList = new ArrayList<Character>();
  charList.add(new Character(100, 800, 35, 35, color(255, 0, 0), "Fire"));
  charList.add(new Character(100, 700, 35, 35, color(0, 0, 255), "Water"));
}

void clearMap(){
  blocks = new ArrayList<Block>();
}
    
void draw() {
  background(255);
  for (Character c : charList) {
    c.move(buttonBlocks);
    c.display();
    for (Block b : blocks) {
      if (b.checkCollisionTop(c, 20)) {
        c.acceleration.y = 0;
        c.velocity.y = 0;
      }
      
    }
    
    for (Block b : blocks) {
      b.display();
    }
    
    
    for(Block b : buttonBlocks){
      b.display(); 
    }
    
  }
  
  
  
  if(redOnDoor && blueOnDoor){
    mapNumber = (mapNumber + 1) % 3;
    //System.out.println(mapNumber);
    changeMap(mapNumber);
    redOnDoor = false;
    blueOnDoor = false;
  }
}


void keyPressed() {

  if(key == 'b'){
    mapNumber = (mapNumber + 1) % 3;
    changeMap(mapNumber);
  }
      /*
      if (key == 'w' || key == 'W') {
        if (charList.get(0).velocity.y == 0) {
            charList.get(0).velocity.add(new PVector(0, -20));
          }
      }
      */
      if (key == 'a' || key == 'A') {
        if (charList.get(0).velocity.x > -5) {
          (charList.get(0)).position.add(new PVector(-2, 0));
          (charList.get(0)).velocity.add(new PVector(-1, 0));
        }
      }
      if (key == 'd' || key == 'D') {
        if (charList.get(0).velocity.x < 5) {
          (charList.get(0)).position.add(new PVector(2, 0));
          (charList.get(0)).velocity.add(new PVector(1, 0));
        }
      }
      if (key == 's' || key == 'S') {
        (charList.get(0)).velocity.x = 0;
      }
    
      if (key == CODED) {
        /*
        if (keyCode == UP) {
          if (charList.get(1).velocity.y == 0) {
            charList.get(1).velocity.add(new PVector(0, -20));
          }
        }
        */
        if (keyCode == LEFT) {
          if (charList.get(1).velocity.x > -5) {
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

void keyReleased() {
  if (key == 'w' || key == 'W') {
    if (charList.get(0).velocity.y == 0) {
      charList.get(0).velocity.add(new PVector(0, -20));
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      if (charList.get(1).velocity.y == 0) {
        charList.get(1).velocity.add(new PVector(0, -20));
      }
    }
  }
}

public void changeMap(int mapNum){
   clearMap();
   if(mapNum == 0){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapOneBlocks(buttonBlocks);
     charList.get(0).setXY(100, 800);
     charList.get(1).setXY(100, 700);
   } else if(mapNum == 1){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapTwoBlocks(buttonBlocks); 
     charList.get(0).setXY(70, 800);
     charList.get(1).setXY(130, 800);
   } else if(mapNum == 2){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapThreeBlocks(buttonBlocks); 
     charList.get(0).setXY(100, 800);
     charList.get(1).setXY(1050, 800);
   }
}
