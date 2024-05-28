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
  public boolean checkCollision(){
    
    return true;
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
