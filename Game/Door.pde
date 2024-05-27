public class Door{
 float x, y, w, h;
 color c;
 String type;
 
 public Door(float startX, float startY, float W, float H, color Color, String Type){
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
