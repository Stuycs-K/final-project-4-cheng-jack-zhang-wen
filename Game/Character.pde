public class Character {
  PVector position, velocity, acceleration;
  int h, w;
  color c;
  String type;

  void move() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration = new PVector();
    applyForce();
    
    for (Block b : blocks) {
      if (b.checkCollisionTop(this)) {
        this.acceleration.y = 0;
        this.velocity.y = 0;
        this.position.y = b.y - this.h;
      }
      if (b.checkCollisionLeft(this)) {
        this.velocity.x = 0;
        this.position.x = b.x - this.w;
        break;
      }
      if (b.checkCollisionRight(this)) {
        this.velocity.x = 0;
        this.position.x = b.x + b.w;
        break;
      }
      if (b.checkCollisionBottom(this)) {
        this.velocity.y = 0;
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
