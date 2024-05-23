public class Character {
  PVector position, velocity, acceleration;
  float radius, mass;
  color c;
  String type;
  /**
   *IN THIS TAB MODIFY:
   *move()
   *attractTo()
   *applyForce()
   */



  void move() {
    //You have 3 PVectors, acceleration, velocity, and position.
    //1. apply acceleration to velocity
    //2. apply velocity to position
    //3. reset acceleration to 0 so that forces do not accumulate
    
    //1. & 2.
    velocity.add(acceleration);
    position.add(velocity);
    //3.
    acceleration = new PVector();


    //DO NOT EDIT:
    //bounce on earth mode
    bounce();
  }


  /**
   *Calculate the force between this orb and the other orb.
   *Return a PVector with the correct magnitude and direction
   */
  PVector attractTo(Character other) {
    //You should be familiar with the formular from physics: g = G*M1*M2/dist^2
    //G is a gravitational constant
    //M1 and M2 are the masses of this Orb, and the other Orb.
    //dist is the distance between the dist.

    //CHANGE THIS
    //calculate the distance from this orb to other orb
    
    float distance = PVector.sub((other.position), (this.position)).mag();

    //DO NOT CHANGE THIS:
    //this code prevents small distances creating problems (overlapping orbs with 0 dist)
    distance = max(15.0, distance);

    //CHANGE THIS
    //calculate the magnitude of the force g using the formula g = G*M1*M2/dist^2
    double mag = G*(this.mass*other.mass)/(distance*distance);

    //CHANGE THIS
    //calculate the direction of the force
    PVector force = PVector.sub((other.position), (this.position));

    //CHANGE THIS
    //normalize the force
    force = force.normalize();

    //CHANGE THIS
    //now you have a unit vector, and a magnitude.
    //Make your force vector have the correct magnitude before returning it.
    force = force.mult((float)mag);

    //DO NOT CHANGE THIS
    return force;
  }

  /*Apply a force to the current orb by changing the acceleration.*/
  void applyForce(PVector f) {
    //knowing that f = ma, you can rearrange the formula to see how you want to manipulate acceleration:
    //a = f / m

    //CHANGE THIS
    //add  force/mass to the acceleration to apply the force.
    acceleration = acceleration.add(PVector.div(f, this.mass));
  }

  //DO NOT CHANGE THINGS BELOW THIS POINT
  //DO NOT CHANGE THINGS BELOW THIS POINT
  //DO NOT CHANGE THINGS BELOW THIS POINT

  public Character(float x, float y, float xSpeed, float ySpeed, float radius_, float mass_, color color_, String type_) {
    position = new PVector(x, y);
    velocity = new PVector(xSpeed, ySpeed);
    acceleration = new PVector(0, 0);
    mass = mass_;
    radius = radius_;
    c = color_;
    type = type_;
  }


  void display() {
    fill(c);
    noStroke();
    circle(position.x, position.y, (float)radius*2);
  }


  public void bounce() {
    if (position.x < radius) //on left edge
      velocity.x = abs(velocity.x);
    if (position.x > width-radius) //on right edge
      velocity.x=-1*abs(velocity.x);
    if (position.y < radius) { //try to avoid sinking down
      velocity.y = abs(velocity.y);
    }
    if (position.y > height-radius)
      velocity.y=-1*abs(velocity.y);
  }
}
