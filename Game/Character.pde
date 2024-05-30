public class Character {
  PVector position, velocity, acceleration;
  float h, w, mass;
  color c;
  String type;

  void move() {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration = new PVector();
    applyForce(this.attractTo(center));
    
    for (Block b : blocks) {
      if (b.checkCollisionTop(this)) {
        this.acceleration.y = 0;
        this.velocity.y = 0;
        this.position.y = b.y - this.h;
      }
      if (b.checkCollisionSide(this)) {
        this.velocity.x = 0;
      }
      if (b.checkCollisionBottom(this)) {
        this.velocity.y = 0;
      }
    }

    bounce();
  }
  
  PVector attractTo(Character other) {    
    float distance = PVector.sub((other.position), (this.position)).mag();
    distance = max(15.0, distance);
    double mag = G*(this.mass*other.mass)/(distance*distance);
    PVector force = PVector.sub((other.position), (this.position));
    force = force.normalize();
    force = force.mult((float)mag);
    return force;
  }

  /*Apply a force to the current orb by changing the acceleration.*/
  void applyForce(PVector f) {
    //knowing that f = ma, you can rearrange the formula to see how you want to manipulate acceleration:
    //a = f / m
    //add  force/mass to the acceleration to apply the force.
    acceleration = acceleration.add(PVector.div(f, this.mass));
  }

  public Character(float x, float y, float xSpeed, float ySpeed, float ht, float wi, float mass_, color color_, String type_) {
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    acceleration = new PVector(0, 0);
    mass = mass_;
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
