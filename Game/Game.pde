ArrayList<Character>charList;
Character center;
static double G = 20;

void setup() {
  size(1200, 900);
  //CHANGE THIS
  //make an orb at the center of the screen with a mass of 100.
  //note: Orb Constructor parameters: x,y,xSpeed,ySpeed,radius,mass
  center = new Character(1200/2, 100*height, 0, 0, 80, 500000000, color(0), "Center");

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

void draw() {
  background(255);
  for (Character c : charList) {
    c.move();
    c.display();
    if (c.position.y < height-c.radius) {
      c.applyForce(c.attractTo(center));
    }
  }
}

void keyPressed() {
      if (key == 'w') {
        charList.get(0).applyForce(new PVector(0, -200));
      }
      if (key == 'a') {
        (charList.get(0)).position.add(new PVector(-4, 0));
      }
      if (key == 'd') {
        (charList.get(0)).position.add(new PVector(4, 0));
      }
    
      if (key == CODED) {
        if (keyCode == UP) {
          charList.get(1).applyForce(new PVector(0, -200));
        }
        if (keyCode == LEFT) {
          (charList.get(1)).position.add(new PVector(-4, 0));
        }
        if (keyCode == RIGHT) {
          (charList.get(1)).position.add(new PVector(4, 0));
        }
      }
}
