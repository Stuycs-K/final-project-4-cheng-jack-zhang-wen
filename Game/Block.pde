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
  
  //Need to do this
  public boolean checkCollisionTop(Character ch){ //set BOUND
    int chBound = int(ch.position.y + ch.radius)/10;
    chBound *= 10;
    //System.out.println(chBound);
    int blBound = int(this.getY() - this.getHeight()/2)/10;
    blBound *= 10;
    //System.out.println(blBound);
    if (chBound == blBound) {
      return true;
    }
    return false;
  }
  
  public boolean checkCollisionSide(Character ch) {
    int chBoundLeft = int(ch.position.x + ch.radius);
    int blBoundLeft = int(this.getX() - this.getWidth()/2);
    int chBoundRight = int(ch.position.x - ch.radius);
    int blBoundRight = int(this.getX() + this.getWidth()/2);
    if (chBoundLeft == blBoundLeft || chBoundRight == blBoundRight) {
      return true;
    }
    return false;
  }
  
  public float getX(){
    return x; 
  }
  
  public float getY(){
    return y; 
  }
  
  public float getWidth(){
    return w; 
  }
  
  public float getHeight(){
    return h; 
  }
  
  public String getType(){
    return type; 
  }
  
}
