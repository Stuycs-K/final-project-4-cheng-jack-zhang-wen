public class Character {
  PVector position, velocity, acceleration;
  int h, w;
  color c;
  String type;
  boolean dropL = false;
  boolean dropR = false;
  boolean dropB = false;


  void move() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration = new PVector();
    applyForce();
    
    if (frameCount % 20 == 0) {
      dropL = false;
      dropR = false;
      dropB = false;
    }
    
    for (Block b : blocks) {
      if (b.checkCollisionTop(this, 15)) {
        this.acceleration.y = 0;
        this.velocity.y = 0;
        this.position.y = b.y - this.h;
      }
      if (b.checkCollisionLeft(this, 5)) {
        if (!dropL) {
          this.velocity.x = 0;
          this.position.x = b.x - this.w;
          dropL = true;
        }
        if (this.velocity.x > 0) {
          this.velocity.x = 0;
          this.position.x = b.x - this.w;
        }
      }
      if (b.checkCollisionRight(this, 5)) {
        if (!dropR) {
          this.velocity.x = 0;
          this.position.x = b.x + b.w;
          dropR = true;
        }
        if (this.velocity.x < 0) {
          this.velocity.x = 0;
          this.position.x = b.x + b.w;
        }
      }
      if (b.checkCollisionBottom(this, 15)) {
        if (!dropB) {
          this.position.y = b.y + b.h;
          this.velocity.y = 0;
          dropB = true;
        }
        if (this.velocity.y < 0) {
          this.velocity.y = 0;
          this.position.y = b.y + b.h;
        }
      }
    }

    bounce();
  }
  
  void applyForce() {
    acceleration = acceleration.add(new PVector(0, 1));
  }

  public Character(float x, float y, int ht, int wi, color color_, String type_) {
    position = new PVector(x, y);
    velocity = new PVector(0, 0);
    acceleration = new PVector(0, 0);
    h = ht;
    w = wi;
    c = color_;
    type = type_;
  }


  void display() {
    fill(c);
    noStroke();
    rect(position.x, position.y, h, w);
  }


  public void bounce() {
    if (position.x < 0) //on left edge... < 0 because top-left corner position is a float, and may not be exactly 0.0
      velocity.x = abs(velocity.x);
    if (position.x > width-w) //on right edge
      velocity.x = -1*abs(velocity.x);
    if (position.y < 0) { //try to avoid sinking down
      velocity.y = 0;
    }
    if (position.y > height-h)
      velocity.y = 0;
      //position.y = height-radius;
  }
}
