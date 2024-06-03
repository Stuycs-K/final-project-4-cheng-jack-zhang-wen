public class Button extends Block{
  Platform attached;
  Boolean isActivated;
  
  public Button(float BstartX, float BstartY, Platform platform, color Color, Boolean Activated){
    super(BstartX, BstartY, 20, 5, Color, "Button");
    attached = platform;
    isActivated = Activated;
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
  
  public boolean getActivated(){
    return isActivated;
  }
  
  public void setActivated(Boolean b){
    isActivated = b; 
  }
}
