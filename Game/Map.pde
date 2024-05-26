public class Map{
    ArrayList<Platform> platforms;
    color RED = color(255, 0, 0);
    color GREEN = color(0, 255, 0);
    color BLUE = color(0, 0, 255);
    color brown = color(114,104,52);
    
    
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
      // Border
      platforms.add(new Platform(0, 0, width, 20, brown));
      platforms.add(new Platform(0, 0, 20, height, brown));
      platforms.add(new Platform(0, 880, width, 20, brown));
      platforms.add(new Platform(1180, 0, 20, height, brown));
      
      // First Layer
      platforms.add(new Platform(20, 750, 400, 20, brown));
      platforms.add(new Platform(20, 620, 530, 20, brown));
      platforms.add(new Platform(530, 620, 20, 100, brown));
      platforms.add(new Platform(530, 720, 480, 20, brown));
      platforms.add(new Platform(1080, 800, 100, 100, brown));
      
      // Second Layer
      platforms.add(new Platform(150, 490, 500, 30, brown));
      platforms.add(new Platform(620, 520, 500, 30, brown));
      platforms.add(new Platform(1000, 520, 100, 50, brown));
      platforms.add(new Platform(1080, 520, 100, 100, brown));
      
      // Third Layer
      platforms.add(new Platform(650, 315, 230, 75, brown));
      platforms.add(new Platform(880, 350, 200, 75, brown));
      platforms.add(new Platform(150, 365, 500, 25, brown));
      platforms.add(new Platform(20, 260, 130, 130, brown));
      
      // Fourth Layer
      platforms.add(new Platform(250, 130, 120, 30, brown));
      platforms.add(new Platform(300, 160, 100, 30, brown));
      platforms.add(new Platform(330, 190, 180, 80, brown));
      platforms.add(new Platform(510, 190, 690, 40, brown));
      return platforms;
    }
    
    
    
 }
