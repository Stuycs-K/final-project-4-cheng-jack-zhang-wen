public class Platform{
  float x, y, w, h;
  color c;
  
  
  public Platform(float startX, float startY, float W, float H, color Color){
    x = startX;
    y = startY;
    w = W;
    h = H;
    c = Color;
  }
  
  color getC(){
     return c; 
  }
  void display(){
    fill(c);
    rect(x, y, w, h);
  }
  
  boolean checkCollision(){
    return true;
  }
  
}
