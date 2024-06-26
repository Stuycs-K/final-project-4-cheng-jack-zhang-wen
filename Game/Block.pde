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
  
  public boolean checkCollisionTop(Character ch, int bound) {
    if ((ch.position.x + ch.w > this.x && ch.position.x < this.x + this.w)){
      int chBound = int(ch.position.y + ch.h)/bound;
      int blBound = int(this.y)/bound;
      chBound *= bound;
      blBound *= bound;
      if (chBound == blBound) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionLeft(Character ch, int bound) {
    if ((ch.position.y + ch.h > this.y && ch.position.y < this.y + this.h)) {

      
      int chBoundLeft = int(ch.position.x + ch.w)/bound;
      int blBoundLeft = int(this.x)/bound;
      chBoundLeft *= bound;
      blBoundLeft *= bound;
      if (chBoundLeft == blBoundLeft) {
        return true;
      }
      
    }
    
    return false;
  }
  
  public boolean checkCollisionRight(Character ch, int bound) {
    if ((ch.position.y + ch.h > this.y && ch.position.y < this.y + this.h)) {

      
      int chBoundRight = int(ch.position.x)/bound + 1;
      int blBoundRight = int(this.x + this.w)/bound;
      chBoundRight *= bound;
      blBoundRight *= bound;
      if (chBoundRight == blBoundRight) {
        return true;
      }
      
    }
    return false;
  }
  
  public boolean checkCollisionBottom(Character ch, int bound) {
    if ((ch.position.x + ch.w > this.x && ch.position.x < this.x + this.w)) {
      int chBound = int(ch.position.y)/bound;
      int blBound = int(this.y + this.h)/bound;
      chBound *= bound;
      blBound *= bound;
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
