public class Button extends Block{
  Platform attached;
  
  public Button(float BstartX, float BstartY, float PstartX, float PstartY, float Pw, float Ph, color Color){
    super(BstartX, BstartY, 20, 5, Color, "Button");
    attached = new Platform(PstartX, PstartY, Pw, Ph, Color);
  }
  
  void display(){
    fill(color(153,153,0));
    rect(x, y, 28, 8);
    fill(c);
    rect(x+5, y, 18, 4);
  }
  
  public Platform getPlatform(){
    return attached;
  }
  
  boolean buttonCollision(Character c){
    return true;
  }
}
