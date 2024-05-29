public class Gem extends Block{
  PImage redGem;
  PImage blueGem;
  public Gem(float startX, float startY, String Type){
    super(startX, startY, 30, 30, color(0, 0, 0), Type);
    redGem = loadImage("redGem.png");
    blueGem = loadImage("blueGem.png");
    redGem.resize(35, 35);
    blueGem.resize(35, 35);
 }
 
 void display(){
   if(this.type == "redGem"){
     image(redGem, this.x, this.y);
   } else {
     image(blueGem, this.x, this.y); 
   }
 }
}
