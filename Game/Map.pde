public class Map{
    ArrayList<Block> blocks;
    color RED = color(255, 0, 0);
    color GREEN = color(0, 255, 0);
    color BLUE = color(0, 0, 255);
    color brown = color(114,104,52);
    
    
    public Map(){
      blocks = new ArrayList<Block>();
    }
    
    void clearMap(){
      blocks = new ArrayList<Block>();
    }
    
    public ArrayList<Block> MapOneBlocks(){
      // Border
      blocks.add(new Platform(0, 0, width, 30, brown));
      blocks.add(new Platform(0, 0, 30, height, brown));
      blocks.add(new Platform(0, 870, width, 30, brown));
      blocks.add(new Platform(1170, 0, 30, height, brown));
      
      // First Layer
      blocks.add(new Platform(20, 750, 400, 30, brown));
      blocks.add(new Platform(20, 620, 530, 30, brown));
      blocks.add(new Platform(530, 620, 25, 100, brown));
      blocks.add(new Platform(530, 720, 480, 30, brown));
      blocks.add(new Platform(1080, 790, 100, 100, brown));
      
      // Second Layer
      blocks.add(new Platform(150, 490, 500, 30, brown));
      blocks.add(new Platform(620, 520, 500, 30, brown));
      blocks.add(new Platform(970, 520, 130, 65, brown));
      blocks.add(new Platform(1070, 520, 110, 110, brown));
      
      // Third Layer
      blocks.add(new Platform(650, 315, 230, 75, brown));
      blocks.add(new Platform(880, 350, 200, 75, brown));
      blocks.add(new Platform(150, 360, 500, 30, brown));
      blocks.add(new Platform(20, 260, 130, 130, brown));
      
      // Fourth Layer
      blocks.add(new Platform(200, 130, 170, 30, brown));
      blocks.add(new Platform(270, 160, 130, 30, brown));
      blocks.add(new Platform(330, 190, 180, 80, brown));
      blocks.add(new Platform(510, 190, 690, 40, brown));
      
      //Doors
      blocks.add(new Door(980, 110, 60, 80, RED, "fireDoor"));
      blocks.add(new Door(1080, 110, 60, 80, BLUE, "waterDoor"));
      
      //Pools
      blocks.add(new Pool(870, 870, 100, 15));
      
      //Lavas
      blocks.add(new Lava(690, 870, 100, 15));
      
      //Toxic
      blocks.add(new Toxic(750, 720, 100, 15));
      
      //Gems
      blocks.add(new Gem(700, 830, "redGem"));
      
      return blocks;
    }
    
    
    
    // Map #2
    public ArrayList<Block> MapTwoBlocks(){
      clearMap();
      // Border
      blocks.add(new Platform(0, 0, width, 30, brown));
      blocks.add(new Platform(0, 0, 30, height, brown));
      blocks.add(new Platform(0, 870, width, 30, brown));
      blocks.add(new Platform(1170, 0, 30, height, brown));
      
      //Bottom Layer
      blocks.add(new Platform(250, 760, 220, 30, brown));
      blocks.add(new Platform(700, 760, 220, 30, brown));
      blocks.add(new Platform(1070, 790, 130, 120, brown));
      blocks.add(new Platform(1120, 740, 50, 120, brown));
      
      
      //Second Layer
      blocks.add(new Platform(30, 640, 1000, 40, brown));
      blocks.add(new Platform(30, 540, 100, 100, brown));
      
      //Third Layer
      blocks.add(new Platform(240, 480, 1000, 30, brown));
      blocks.add(new Platform(540, 450, 150, 30, brown));
      blocks.add(new Platform(1025, 400, 200, 100, brown));
      blocks.add(new Platform(1100, 320, 100, 100, brown));
      
      blocks.add(new Platform(350, 400, 100, 20, brown));
      blocks.add(new Platform(780, 400, 100, 20, brown));
      
      //Fourth Layer
      blocks.add(new Platform(30, 170, 510, 35, brown));
      blocks.add(new Platform(690, 170, 300, 35, brown));
      blocks.add(new Platform(920, 205, 90, 35, brown));
      blocks.add(new Platform(940, 240, 110, 35, brown));
      
      //Pools
      blocks.add(new Pool(260, 760, 200, 15));
      blocks.add(new Pool(710, 870, 200, 15));
      
      //Lavas
      blocks.add(new Lava(260, 870, 200, 15));
      blocks.add(new Lava(710, 760, 200, 15));
      
      //Green Puddles
      blocks.add(new Toxic(280, 480, 260, 15));
      blocks.add(new Toxic(690, 480, 260, 15));
      
      //Doors
      blocks.add(new Door(35, 90, 60, 80, RED, "fireDoor"));
      blocks.add(new Door(110, 90, 60, 80, BLUE, "waterDoor"));
      
      return blocks;
    }
    
    public ArrayList<Block> MapThreeBlocks(){
      clearMap(); 
      // Border
      blocks.add(new Platform(0, 0, width, 30, brown));
      blocks.add(new Platform(0, 0, 30, height, brown));
      blocks.add(new Platform(0, 870, width, 30, brown));
      blocks.add(new Platform(1170, 0, 30, height, brown));
      
      //First layer
      blocks.add(new Platform(400, 830, 400, 40, brown));
      blocks.add(new Platform(450, 790, 300, 40, brown));
      blocks.add(new Platform(500, 750, 200, 40, brown));
      
      //Second Layer
      blocks.add(new Platform(30, 680, 400, 30, brown));
      blocks.add(new Platform(770, 680, 400, 30, brown));
      blocks.add(new Platform(30, 610, 70, 70, brown));
      blocks.add(new Platform(1100, 610, 70, 70, brown));
      
      //Upper Layer
      blocks.add(new Platform(170, 540, 860, 40, brown));
      blocks.add(new Platform(30, 420, 170, 30, brown));
      blocks.add(new Platform(1000, 420, 170, 30, brown));
      blocks.add(new Platform(280, 150, 30, 410, brown));
      blocks.add(new Platform(890, 150, 30, 410, brown));
      blocks.add(new Platform(150, 110, 370, 40, brown));
      blocks.add(new Platform(680, 110, 370, 40, brown));
      
      blocks.add(new Platform(310, 380, 150, 30, brown));
      blocks.add(new Platform(740, 380, 150, 30, brown));
      blocks.add(new Platform(570, 230, 60, 320, brown));
      blocks.add(new Platform(540, 260, 120, 40, brown));
      blocks.add(new Platform(510, 290, 180, 40, brown));
      blocks.add(new Platform(540, 320, 120, 40, brown));
      
      //Pools
      blocks.add(new Pool(800, 870, 200, 15));
      blocks.add(new Pool(200, 680, 200, 15));
      blocks.add(new Pool(745, 380, 145, 15));
      
      //Lavas
      blocks.add(new Lava(200, 870, 200, 15));
      blocks.add(new Lava(800, 680, 200, 15));
      blocks.add(new Lava(310, 380, 145, 15));
      
      // Doors
      blocks.add(new Door(350, 460, 60, 80, RED, "fireDoor"));
      blocks.add(new Door(790, 460, 60, 80, BLUE, "waterDoor"));
      
      
      return blocks;
    }
 }
