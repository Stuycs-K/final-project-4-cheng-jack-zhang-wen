ArrayList<Character> charList;
ArrayList<Block> blocks;
ArrayList<Block> buttonBlocks;
ArrayList<Button> buttons;
public static boolean blueOnDoor = false;
public static boolean redOnDoor = false;
public static int mapNumber = 0;
int redGems;
int blueGems;
PImage redGem;
PImage blueGem;
int time = 0;
int lastMillis = 0;
boolean showChooseMenu = false;
public static int redGemsCollected = 0;
public static int blueGemsCollected = 0;

public static boolean admin = false;

Map map;

void setup() {
  size(1200, 900);
  redGem = loadImage("redGem.png");
  blueGem = loadImage("blueGem.png");
  redGem.resize(50, 50);
  blueGem.resize(50, 50);
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
  if(!redOnDoor || !blueOnDoor){
    background(255);
    for (Block b : blocks) {
      b.display();
    }
    for (Character c : charList) {
      c.move();
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
    if (millis() - lastMillis >= 1000) { 
      time++; 
      lastMillis = millis(); 
    }
  }
  
  if(redOnDoor && blueOnDoor){
    winMenu();
  }
  if(showChooseMenu){
    ChooseMenu(); 
  }
}

void winMenu(){
  fill(196, 175, 65);
  stroke(5);
  strokeWeight(4);
  rect(400, 200, 400, 500);
  rect(450, 260, 300, 400);
  fill(240, 67, 194);
  circle(600, 200, 70);
  fill(0, 0, 0);
  int seconds = time % 60;
  int minutes = (time / 60) % 60;
  textSize(50);
  text("TIME:  " + String.format("%02d:%02d", minutes, seconds), 480, 320);
  image(redGem, 500, 380);
  image(blueGem, 500, 450);
  text(redGemsCollected + " / " + redGems, 600, 420);
  text(blueGemsCollected + " / " + blueGems, 600, 490);
  if (mouseX > 500 && mouseX < 700 && mouseY > 520 && mouseY < 570) {
    fill(255, 200, 0); // Hover color
  } else {
    fill(219, 174, 96); // Default color
  }
  rect(500, 520, 200, 50);
  fill(0, 0, 0);
  textSize(35);
  text("Continue", 535, 555);
  if (mouseX > 500 && mouseX < 700 && mouseY > 590 && mouseY < 640) {
    fill(255, 200, 0); // Hover color
  } else {
    fill(219, 174, 96); // Default color
  }
  rect(500, 590, 200, 50);
  fill(0, 0, 0);
  text("Choose", 545, 625);
  noStroke();
}

void ChooseMenu() {
  stroke(5);
  strokeWeight(4);
  fill(173, 128, 3);
  rect(400, 300, 400, 400);
  
  textSize(50);

  if (mouseX > 467 && mouseX < 567 && mouseY > 367 && mouseY < 467) {
    fill(255, 215, 0); 
  } else {
    fill(219, 174, 96);
  }
  rect(467, 367, 100, 100);
  fill(0);
  text("1", 507, 437);
  
  if (mouseX > 634 && mouseX < 734 && mouseY > 367 && mouseY < 467) {
    fill(255, 215, 0); 
  } else {
    fill(219, 174, 96);
  }
  rect(634, 367, 100, 100);
  fill(0);
  text("2", 674, 437);
  
  if (mouseX > 467 && mouseX < 567 && mouseY > 534 && mouseY < 634) {
    fill(255, 215, 0);
  } else {
    fill(219, 174, 96);
  }
  rect(467, 534, 100, 100);
  fill(0);
  text("3", 507, 604);
  
  if (mouseX > 634 && mouseX < 734 && mouseY > 534 && mouseY < 634) {
    fill(255, 215, 0); 
  } else {
    fill(219, 174, 96);
  }
  rect(634, 534, 100, 100);
  fill(0);
  text("4", 674, 604);
  
  if (mouseX > 760 && mouseX < 800 && mouseY > 300 && mouseY < 340) {
    fill(255, 99, 71);
  } else {
    fill(255, 0, 0);
  }
  rect(760, 300, 40, 40);
  fill(0);
  textSize(35);
  text("X", 773, 330);

  noStroke();
}

void mousePressed(){
   if (mouseX > 500 && mouseX < 700 && mouseY > 520 && mouseY < 570 && redOnDoor && blueOnDoor && !showChooseMenu) {
    mapNumber = (mapNumber + 1) % 4;
    changeMap(mapNumber);
  }

  if (mouseX > 467 && mouseX < 567 && mouseY > 367 && mouseY < 467 && redOnDoor && blueOnDoor && showChooseMenu) {
    mapNumber = 0;
    showChooseMenu = false;
    changeMap(mapNumber);
  }
  
  if (mouseX > 634 && mouseX < 734 && mouseY > 367 && mouseY < 467 && redOnDoor && blueOnDoor && showChooseMenu) {
    mapNumber = 1;
    showChooseMenu = false;
    changeMap(mapNumber);
  }
  
  if (mouseX > 467 && mouseX < 567 && mouseY > 534 && mouseY < 634 && redOnDoor && blueOnDoor && showChooseMenu) {
    mapNumber = 2;
    showChooseMenu = false;
    changeMap(mapNumber);
  }
  
  if (mouseX > 634 && mouseX < 734 && mouseY > 534 && mouseY < 634 && redOnDoor && blueOnDoor && showChooseMenu) {
    mapNumber = 3;
    showChooseMenu = false;
    changeMap(mapNumber);
  }
  
  if (mouseX > 760 && mouseX < 800 && mouseY > 300 && mouseY < 340 && redOnDoor && blueOnDoor && showChooseMenu) {
    showChooseMenu = false;
  }
  
  if (mouseX > 500 && mouseX < 700 && mouseY > 590 && mouseY < 640 && redOnDoor && blueOnDoor) {
    showChooseMenu = true;
  }
}

void keyPressed() {
  if (key == 'b'){
    mapNumber = (mapNumber + 1) % 3;
    changeMap(mapNumber);
  }
  if (key == '='){
    admin = !admin;
  }

  if(key == 'z'){
    blueOnDoor =true;
    redOnDoor = true;
  }
  
  if(!redOnDoor || !blueOnDoor){
    if (admin) {
      if (key == 'w' || key == 'W') {
        charList.get(0).velocity.add(new PVector(0, -15));
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
        if (keyCode == UP) {
          charList.get(1).velocity.add(new PVector(0, -15));
        }
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
    if (!admin) {
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

  }
}


void keyReleased() {
  if (!admin) {
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
}

public void changeMap(int mapNum){
   clearMap();
   redOnDoor = false;
   blueOnDoor = false;
   time = 0;
   lastMillis = 0;
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
