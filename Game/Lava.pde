public class Lava{
 float x, y, w, h;
 color c;
 
 public Lava(float startX, float startY, float W, float H){
    x = startX;
    y = startY;
    w = W;
    h = H;
    c = color(255, 0, 0);
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
 
  String getType(){
    return ""; 
  }
  
}
