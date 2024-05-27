public class Map{
    ArrayList<Platform> platforms;
    ArrayList<Door> doors;
    ArrayList<Lava> lavas;
    ArrayList<Pool> pools;
    ArrayList<Toxic> toxics;
    color RED = color(255, 0, 0);
    color GREEN = color(0, 255, 0);
    color BLUE = color(0, 0, 255);
    color brown = color(114,104,52);
    
    
    public Map(){
      platforms = new ArrayList<Platform>();
      doors = new ArrayList<Door>();
      lavas = new ArrayList<Lava>();
      pools = new ArrayList<Pool>();
      toxics = new ArrayList<Toxic>();
    }
    
    public void clearMap(){
      platforms = new ArrayList<Platform>();
      doors = new ArrayList<Door>();
      lavas = new ArrayList<Lava>();
      pools = new ArrayList<Pool>();
    }
    
    public ArrayList<Platform> MapOnePlatforms(){
      // Border
      platforms.add(new Platform(0, 0, width, 30, brown));
      platforms.add(new Platform(0, 0, 30, height, brown));
      platforms.add(new Platform(0, 870, width, 30, brown));
      platforms.add(new Platform(1170, 0, 30, height, brown));
      
      // First Layer
      platforms.add(new Platform(20, 750, 400, 30, brown));
      platforms.add(new Platform(20, 620, 530, 30, brown));
      platforms.add(new Platform(530, 620, 25, 100, brown));
      platforms.add(new Platform(530, 720, 480, 30, brown));
      platforms.add(new Platform(1080, 790, 100, 100, brown));
      
      // Second Layer
      platforms.add(new Platform(150, 490, 500, 30, brown));
      platforms.add(new Platform(620, 520, 500, 30, brown));
      platforms.add(new Platform(970, 520, 130, 65, brown));
      platforms.add(new Platform(1070, 520, 110, 110, brown));
      
      // Third Layer
      platforms.add(new Platform(650, 315, 230, 75, brown));
      platforms.add(new Platform(880, 350, 200, 75, brown));
      platforms.add(new Platform(150, 360, 500, 30, brown));
      platforms.add(new Platform(20, 260, 130, 130, brown));
      
      // Fourth Layer
      platforms.add(new Platform(200, 130, 170, 30, brown));
      platforms.add(new Platform(270, 160, 130, 30, brown));
      platforms.add(new Platform(330, 190, 180, 80, brown));
      platforms.add(new Platform(510, 190, 690, 40, brown));
      return platforms;
    }
    
    public ArrayList<Door> MapOneDoors(){
      doors.add(new Door(980, 110, 60, 80, RED, "fireDoor"));
      doors.add(new Door(1080, 110, 60, 80, BLUE, "waterDoor"));
      
      return doors; 
    }
    
    public ArrayList<Pool> MapOnePools(){
      pools.add(new Pool(870, 870, 100, 15));
      return pools;
    }
    
    public ArrayList<Lava> MapOneLavas(){
      lavas.add(new Lava(690, 870, 100, 15));
      return lavas;
    }
    
    public ArrayList<Toxic> MapOneToxics(){
      toxics.add(new Toxic(750, 720, 100, 15));
      return toxics;    
    }
 }
