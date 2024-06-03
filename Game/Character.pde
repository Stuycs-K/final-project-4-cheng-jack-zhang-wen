import java.util.Iterator;

public class Character {
  PVector position, velocity, acceleration;
  int h, w;
  color c;
  String type;
  boolean dropL = false;
  boolean dropR = false;
  boolean dropB = false;
  ArrayList<Button> buttonSteppedOn;

  void move(ArrayList<Block> buttonBlocks) {
    velocity.add(acceleration);
    position.add(velocity);
    acceleration = new PVector();
    applyForce();
    
    if (frameCount % 20 == 0) {
      dropL = false;
      dropR = false;
      dropB = false;
    }
    
    buttonSteppedOn = new ArrayList<Button>();
    
    for (Iterator<Block> iterator = blocks.iterator(); iterator.hasNext(); ) {
      Block b = iterator.next();
      // Top
      if (b.checkCollisionTop(this, 20)) {
        // Button
        if(b.getType().equals("Button")){
          Button button = (Button) b;
          Platform attachedPlatform = button.getPlatform();
          buttonSteppedOn.add(button);
          if(button.getActivated()){
            buttonBlocks.remove(attachedPlatform);
          } else {
            buttonBlocks.add(attachedPlatform);
          }
          this.acceleration.y = 0;
          this.velocity.y = 0;
          this.position.y = b.y - this.h;
        } 
        
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
      /*
      for(Button button : buttonSteppedOn){
        Platform attachedPlatform = button.getPlatform();
         if(button.getActivated()){
            buttonBlocks.add(attachedPlatform);
          } else {
            buttonBlocks.remove(attachedPlatform);
          }
      }
      */
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
