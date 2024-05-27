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
  
  void display(){
    fill(c);
    rect(x, y, w, h);
  }
  
  boolean checkCollision(){
    return true;
  }
  
  float getX(){
    return x; 
  }
  
  float getY(){
    return y; 
  }
  
  float getWidth(){
    return w; 
  }
  
  float getHeight(){
    return h; 
  }
  
}
