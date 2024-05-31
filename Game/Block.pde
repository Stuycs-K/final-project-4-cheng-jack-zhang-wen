public class Block{
  float x, y, w, h;
  color c;
  String type;
  
  public Block(float startX, float startY, float W, float H, color Color, String Type){
    x = startX;
    y = startY;
    w = W;
    h = H;
    c = Color;
    type = Type;
  }
  
  void display(){
    fill(c);
    rect(x, y, w, h);
  }
  
  public boolean checkCollisionTop(Character ch) {
    if (ch.position.x >= this.x && ch.position.x+ch.w <= this.x+this.w) {
      int chBound = int(ch.position.y + ch.h)/10;
      int blBound = int(this.y)/10;
      chBound *= 10;
      blBound *= 10;
      if (chBound == blBound) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionLeft(Character ch) {
    if (ch.position.y + ch.h >= this.y && ch.position.y <= this.y + this.h) {
      int chBoundLeft = int(ch.position.x + ch.w)/5;
      int blBoundLeft = int(this.x)/5;
      chBoundLeft *= 5;
      blBoundLeft *= 5;
      if (chBoundLeft == blBoundLeft) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionRight(Character ch) {
    if (ch.position.y + ch.h >= this.y && ch.position.y <= this.y + this.h) {
      int chBoundRight = int(ch.position.x)/5;
      int blBoundRight = int(this.x + this.w)/5;
      chBoundRight *= 5;
      blBoundRight *= 5;
      if (chBoundRight == blBoundRight) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionBottom(Character ch) {
    if (ch.position.x >= this.x && ch.position.x+ch.w <= this.x+this.w) {
      int chBound = int(ch.position.y)/10;
      int blBound = int(this.y + this.h)/10;
      chBound *= 10;
      blBound *= 10;
      if (chBound == blBound) {
        return true;
      }
    }
    return false;
  }

  public String getType(){
    return type; 
  }
  
}
