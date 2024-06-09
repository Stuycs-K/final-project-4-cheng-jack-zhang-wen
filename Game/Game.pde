ArrayList<Character> charList;
ArrayList<Block> blocks;
ArrayList<Block> buttonBlocks;
ArrayList<Button> buttons;
public static boolean blueOnDoor = false;
public static boolean redOnDoor = false;
public static int mapNumber = 0;
int redGems;
int blueGems;
public static int redGemsCollected = 0;
public static int blueGemsCollected = 0;

Map map;

void setup() {
  size(1200, 900);
  clearMap();
  map = new Map();
  buttonBlocks = new ArrayList<Block>();
  redGems = 3;
  blueGems = 3;
  redGemsCollected = 0;
  blueGemsCollected = 0;

  buttons = new ArrayList<Button>();
  blocks = map.MapOneBlocks(buttonBlocks, buttons);
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
    for (Block b : blocks) {
      b.display();
    }
    
    c.move(buttonBlocks);
    c.display();
    for (Block b : blocks) {
      if (b.checkCollisionTop(c, 20)) {
        c.acceleration.y = 0;
        c.velocity.y = 0;
      }
      
    }
    
    
    for(Button bu : buttons){
      if (mapNumber == 0) {
        bu.attached.display(); 
      }
    }
  }
  
  
  
  if(redOnDoor && blueOnDoor){
    mapNumber = (mapNumber + 1) % 4;
    //System.out.println(mapNumber);
    changeMap(mapNumber);
    redOnDoor = false;
    blueOnDoor = false;
  }
}


void keyPressed() {
  if(key == 'b'){
    mapNumber = (mapNumber + 1) % 4;
    changeMap(mapNumber);
  }
      if (key == 'a' || key == 'A') {
        if (charList.get(0).velocity.x > -7) {
          (charList.get(0)).position.add(new PVector(-2, 0));
          (charList.get(0)).velocity.add(new PVector(-1, 0));
        }
      }
      if (key == 'd' || key == 'D') {
        if (charList.get(0).velocity.x < 7) {
          (charList.get(0)).position.add(new PVector(2, 0));
          (charList.get(0)).velocity.add(new PVector(1, 0));
        }
      }
      if (key == 's' || key == 'S') {
        (charList.get(0)).velocity.x = 0;
      }
    
      if (key == CODED) {
        if (keyCode == LEFT) {
          if (charList.get(1).velocity.x > -7) {
            (charList.get(1)).position.add(new PVector(-2, 0));
            (charList.get(1)).velocity.add(new PVector(-1, 0));
          }
        }
        if (keyCode == RIGHT) {
          if (charList.get(1).velocity.x < 7) {
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
      charList.get(0).velocity.add(new PVector(0, -15));
    }
  }
  if (key == CODED) {
    if (keyCode == UP) {
      if (charList.get(1).velocity.y == 0) {
        charList.get(1).velocity.add(new PVector(0, -15));
      }
    }
  }
}

public void changeMap(int mapNum){
   clearMap();
   if(mapNum == 0){
     buttons = new ArrayList<Button>();
     blocks = map.MapOneBlocks(buttonBlocks, buttons);
     charList.get(0).setXY(100, 800);
     charList.get(1).setXY(100, 700);
     redGems = 3;
     blueGems = 3;
     redGemsCollected = 0;
     blueGemsCollected = 0;
   } else if(mapNum == 1){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapTwoBlocks(); 
     charList.get(0).setXY(70, 800);
     charList.get(1).setXY(130, 800);
     redGems = 6;
     blueGems = 6;
     redGemsCollected = 0;
     blueGemsCollected = 0;
   } else if(mapNum == 2){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapThreeBlocks(); 
     charList.get(0).setXY(100, 800);
     charList.get(1).setXY(1050, 800);
     redGems = 10;
     blueGems = 10;
     redGemsCollected = 0;
     blueGemsCollected = 0;
   } else if(mapNum == 3){
     buttonBlocks = new ArrayList<Block>();
     blocks = map.MapFourBlocks(); 
     charList.get(0).setXY(50, 50);
     charList.get(1).setXY(1120, 50);
     redGems = 10;
     blueGems = 10;
     redGemsCollected = 0;
     blueGemsCollected = 0;
   } 
}
