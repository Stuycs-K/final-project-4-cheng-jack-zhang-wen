import java.util.Iterator;

public class Character {
  PVector position, velocity, acceleration;
  int h, w;
  color c;
  String type;
  boolean dropL = false;
  boolean dropR = false;
  boolean dropB = false;
  int lastT = 0;
  boolean actBu = true;
  ArrayList<Button> buttonSteppedOn;

  void move(ArrayList<Block> buttonBlocks) {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration = new PVector();
    applyForce();
    lastT ++;
    
    if (frameCount % 20 == 0) {
      dropL = false;
      dropR = false;
      dropB = false;
    }
    if (lastT % 120 == 0) {
      actBu = true;
    }
    
    buttonSteppedOn = new ArrayList<Button>();
    
    for (Iterator<Block> iterator = blocks.iterator(); iterator.hasNext(); ) {
      Block b = iterator.next();
      // Top
      if (b.checkCollisionTop(this, 20)) {
        if(b.getType().equals("Platform")){
          this.acceleration.y = 0;
          this.velocity.y = 0;
          this.position.y = b.y - this.h;
        }
        
        if(b.getType().equals("fireDoor")){
          if(this.type.equals("Fire")){
            redOnDoor = true; 
          }
        } else if(b.getType().equals("waterDoor")){
          if(this.type.equals("Water")){
            blueOnDoor = true; 
          }
        }
        
        if(b.getType().equals("blueGem") && this.type.equals("Water")){
          iterator.remove();
          b = iterator.next();
        } 
        if(b.getType().equals("redGem") && this.type.equals("Fire")){
          iterator.remove(); 
          b = iterator.next();
        }
        
        if(b.getType().equals("Lava") && this.type.equals("Water")){
          changeMap(mapNumber); 
        } 
        if(b.getType().equals("Pool") && this.type.equals("Fire")){
          changeMap(mapNumber); 
        }
        if(b.getType().equals("Toxic")){
          changeMap(mapNumber); 
        }
      }
      
      // Left
      if (b.checkCollisionLeft(this, 5)) {
        if(b.getType().equals("fireDoor")){
          if(this.type.equals("Fire")){
            redOnDoor = true; 
          }
        } else if(b.getType().equals("waterDoor")){
          if(this.type.equals("Water")){
            blueOnDoor = true; 
          }
        } else if (!dropL && b.getType().equals("Platform")) {
          this.velocity.x = 0;
          this.position.x = b.x - this.w;
          dropL = true;
        }
        if (this.position.x < b.x + b.w && this.position.x + this.w > b.x && !b.getType().equals("Door")) {
            this.velocity.x = 0;
            this.position.x = b.x - this.w;
          }
        /*
        if (this.velocity.x > 0 && !b.getType().equals("Door")) {
          this.velocity.x = 0;
          this.position.x = b.x - this.w;
        }
        */
        
        
        if(b.getType().equals("blueGem") && this.type.equals("Water")){
          iterator.remove();
          b = iterator.next();
        } 
        if(b.getType().equals("redGem") && this.type.equals("Fire")){
          iterator.remove(); 
          b = iterator.next();
        }
        
        if(b.getType().equals("Lava") && this.type.equals("Water")){
          changeMap(mapNumber); 
        } 
        if(b.getType().equals("Pool") && this.type.equals("Fire")){
          changeMap(mapNumber); 
        }
        if(b.getType().equals("Toxic")){
          changeMap(mapNumber); 
        }
        
      }
      
      // Right
      if (b.checkCollisionRight(this, 5)) {
        if(b.getType().equals("fireDoor")){
          if(this.type.equals("Fire")){
            redOnDoor = true; 
          }
        } else if(b.getType().equals("waterDoor")){
          if(this.type.equals("Water")){
            blueOnDoor = true; 
          }
        } else if(b.getType().equals("Platform")){
          if (!dropR) {
            this.velocity.x = 0;
            this.position.x = b.x + b.w;
            dropR = true;
          }
          if (this.position.x < b.x + b.w && this.position.x + this.w > b.x && !b.getType().equals("Door")) {
            this.velocity.x = 0;
            this.position.x = b.x + b.w;
          }
          /*
          if (this.velocity.x < 0 && !b.getType().equals("Door")) {
            this.velocity.x = 0;
            this.position.x = b.x + b.w;
          }
          */
        }
        
        if(b.getType().equals("blueGem") && this.type.equals("Water")){
          iterator.remove();
          b = iterator.next();
        } 
        if(b.getType().equals("redGem") && this.type.equals("Fire")){
          iterator.remove();
        }
        
        if(b.getType().equals("Lava") && this.type.equals("Water")){
          changeMap(mapNumber); 
        } 
        if(b.getType().equals("Pool") && this.type.equals("Fire")){
          changeMap(mapNumber); 
        }
        if(b.getType().equals("Toxic")){
          changeMap(mapNumber); 
        }
      }
      
      // Bottom
      if (b.checkCollisionBottom(this, 20)) {
        if(b.getType().equals("Platform")){
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
        
        if(b.getType().equals("blueGem") && this.type.equals("Water")){
          iterator.remove();
          b = iterator.next();
        } 
        if(b.getType().equals("redGem") && this.type.equals("Fire")){
          iterator.remove(); 
          b = iterator.next();
        }
        
        if(b.getType().equals("Lava") && this.type.equals("Water")){
          changeMap(mapNumber); 
        } 
        if(b.getType().equals("Pool") && this.type.equals("Fire")){
          changeMap(mapNumber); 
        }
        if(b.getType().equals("Toxic")){
          changeMap(mapNumber); 
        }
      }
      
      for (Button bu : buttons) {
        if (bu.checkCollisionTop(this, 20)) {
          if (actBu) {
            bu.cycleActivated();
            actBu = false;
            lastT = 0;
            this.acceleration.y = 0;
            this.velocity.y = 0;
            this.position.y = bu.y - this.h;
            //System.out.println("cycled" + bu.isActivated);
          }
        }
        
        Block associated = bu.attached;
        if (bu.getActivated()) { //HIDE
          //System.out.println("hide");
          //associated.c = (255);         
        }
        else {
          // Top
          if (associated.checkCollisionTop(this, 20)) {
            this.acceleration.y = 0;
            this.velocity.y = 0;
            this.position.y = associated.y - this.h;
          }
          
          // Left
          if (associated.checkCollisionLeft(this, 5)) {
            if (!dropL) {
              this.velocity.x = 0;
              this.position.x = associated.x - this.w;
              dropL = true;
            }
          }
          
          // Right
          if (associated.checkCollisionRight(this, 5)) {
            if (!dropR) {
              this.velocity.x = 0;
              this.position.x = associated.x + associated.w;
              dropR = true;
            }
          }
          
          // Bottom
          if (associated.checkCollisionBottom(this, 20)) {
            if (!dropB) {
              this.position.y = associated.y + associated.h;
              this.velocity.y = 0;
              dropB = true;
            }
            if (this.velocity.y < 0) {
              this.velocity.y = 0;
              this.position.y = associated.y + associated.h;
            }
          }
          
        }
      }
      /*
      
      for (Block bB : buttonBlocks) {
        // Top
        if (bB.checkCollisionTop(this, 20)) {
          this.acceleration.y = 0;
          this.velocity.y = 0;
          this.position.y = bB.y - this.h;
        }
        
        // Left
        if (bB.checkCollisionLeft(this, 5)) {
          if (!dropL) {
            this.velocity.x = 0;
            this.position.x = bB.x - this.w;
            dropL = true;
          }
        }
        
        // Right
        if (bB.checkCollisionRight(this, 5)) {
          if (!dropR) {
            this.velocity.x = 0;
            this.position.x = bB.x + bB.w;
            dropR = true;
          }
        }
        
        // Bottom
        if (bB.checkCollisionBottom(this, 20)) {
          if (!dropB) {
            this.position.y = bB.y + bB.h;
            this.velocity.y = 0;
            dropB = true;
          }
          if (this.velocity.y < 0) {
            this.velocity.y = 0;
            this.position.y = bB.y + bB.h;
          }
        }
        */
      }
      /*
      for(Button button : buttonSteppedOn){
        Platform attachedPlatform = button.getPlatform();
         if(button.getActivated()){
            buttonBlocks.add(attachedPlatform);
          } else {
            buttonBlocks.remove(attachedPlatform);
          }
      }
      
    }
    */

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
  
  void jump(boolean adm) {
    if (adm) {
      
    }
    else {
      
    }
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
  
  public void setXY(float X, float Y){
     position = new PVector(X, Y);
     velocity = new PVector(0, 0);
     acceleration = new PVector(0, 0);
  }
}
