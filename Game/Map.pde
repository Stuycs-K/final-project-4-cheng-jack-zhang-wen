public class Map{
    ArrayList<Platform> platforms;
    color RED = color(255, 0, 0);
    color GREEN = color(0, 255, 0);
    color BLUE = color(0, 0, 255);
    
    
    public Map(){
      platforms = new ArrayList<Platform>();
    }
    
    private void clearPlatforms(){
      platforms = new ArrayList<Platform>();
    }
    
    ArrayList<Platform> generateMap(int n){
      clearPlatforms();
      if(n == 1){
        return Map1(); 
      }
      
      return platforms;
    }
    
    private ArrayList<Platform> Map1(){
      platforms.add(new Platform(0, 0, width, 10, RED));
      platforms.add(new Platform(0, 0, 10, height, RED));
      platforms.add(new Platform(0, 890, width, 10, RED));
      platforms.add(new Platform(1190, 0, 10, height, RED));
      platforms.add(new Platform(400, 300, 100, 20, RED));
      return platforms;
    }
    
    
    
 }
