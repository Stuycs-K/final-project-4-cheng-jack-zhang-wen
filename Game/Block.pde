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
      int chBound = int(ch.position.y + ch.h);
      int blBound = int(this.y);
      if (chBound == blBound) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionSide(Character ch) {
    if (ch.position.y + ch.h >= this.y && ch.position.y <= this.y + this.h) {
      int chBoundLeft = int(ch.position.x + ch.w);
      int blBoundLeft = int(this.x);
      int chBoundRight = int(ch.position.x);
      int blBoundRight = int(this.x + this.w);
      if (chBoundLeft == blBoundLeft || chBoundRight == blBoundRight) {
        return true;
      }
    }
    return false;
  }
  
  public boolean checkCollisionBottom(Character ch) {
    if (ch.position.x >= this.x && ch.position.x+ch.w <= this.x+this.w) {
      int chBound = int(ch.position.y);
      int blBound = int(this.y + this.h);
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
