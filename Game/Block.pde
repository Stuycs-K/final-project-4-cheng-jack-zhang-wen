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
  
  public boolean checkCollisionSide(Character ch) {
    if (ch.position.y + ch.h >= this.y && ch.position.y <= this.y + this.h) {
      int chBoundLeft = int(ch.position.x + ch.w)/10;
      int blBoundLeft = int(this.x)/10;
      int chBoundRight = int(ch.position.x)/10;
      int blBoundRight = int(this.x + this.w)/10;
      chBoundLeft *= 10;
      blBoundLeft *= 10;
      chBoundRight *= 10;
      blBoundRight *= 10;
      if (chBoundLeft == blBoundLeft || chBoundRight == blBoundRight) {
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
