public class Map{
    ArrayList<Block> blocks;
    public color RED = color(255, 0, 0);
    public color GREEN = color(0, 255, 0);
    public color BLUE = color(0, 0, 255);
    public color brown = color(114,104,52);
    public color purple = color(138,43,226);
    
    
    public Map(){
      blocks = new ArrayList<Block>();
    }
    
    void clearMap(){
      blocks = new ArrayList<Block>();
    }
    
    public ArrayList<Block> MapOneBlocks(ArrayList<Block> buttonBlocks, ArrayList<Button> buttons){
      clearMap();
            
      //Red Gems
      blocks.add(new Gem(725, 800, "redGem"));
      blocks.add(new Gem(200, 420, "redGem"));
      blocks.add(new Gem(250, 80, "redGem"));
      
      //Blue Gems
      blocks.add(new Gem(710, 460, "blueGem"));
      blocks.add(new Gem(700, 130, "blueGem"));
      blocks.add(new Gem(45, 210, "blueGem"));
      
      // Border
      blocks.add(new Platform(0, 0, width, 30, brown)); //top
      blocks.add(new Platform(0, 0, 30, height, brown)); //left
      blocks.add(new Platform(0, 870, width, 30, brown)); //bottom
      blocks.add(new Platform(1170, 0, 30, height, brown)); //right
      
      // First Layer
      blocks.add(new Platform(20, 750, 400, 30, brown));
      blocks.add(new Platform(20, 620, 530, 30, brown));
      blocks.add(new Platform(530, 620, 25, 85, brown));
      blocks.add(new Platform(530, 705, 480, 30, brown));
      blocks.add(new Platform(1060, 790, 120, 100, brown));
      
      // Second Layer
      blocks.add(new Platform(150, 490, 500, 30, brown));
      blocks.add(new Platform(620, 520, 500, 30, brown));
      blocks.add(new Platform(970, 520, 130, 65, brown));
      blocks.add(new Platform(1070, 520, 110, 100, brown));
      
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
      blocks.add(new Pool(870, 870, 80, 10));
      
      //Lavas
      blocks.add(new Lava(690, 870, 80, 10));
      
      //Toxic
      blocks.add(new Toxic(700, 705, 50, 10));

      
      //Buttons
      Platform blue = new Platform(1080, 370, 90, 30, BLUE);
      blocks.add(new Button(450, 482, blue, BLUE, BLUE, false));
      //blocks.add(new Button(920, 342, blue, BLUE, BLUE, true));
      //blocks.add(blue);
      
      buttons.add(new Button(450, 482, blue, BLUE, BLUE, false));
      //buttons.add(new Button(920, 342, blue, BLUE, BLUE, true));
      buttonBlocks.add(blue);
      
      Platform p = new Platform(30, 490, 120, 30, purple);
      blocks.add(new Button(200, 612, p, purple, purple, false));
      //blocks.add(new Button(280, 482, p, purple, purple, true));
      //blocks.add(p);
      
      buttons.add(new Button(200, 612, p, purple, purple, false));
      //buttons.add(new Button(280, 482, p, purple, purple, true));
      
      buttonBlocks.add(p);
      
      return blocks;
    }
    
    
    
    // Map #2
    public ArrayList<Block> MapTwoBlocks(){
      clearMap();
      
      //redGems
      blocks.add(new Gem(290, 835, "redGem"));
      blocks.add(new Gem(390, 835, "redGem"));
      blocks.add(new Gem(740, 725, "redGem"));
      blocks.add(new Gem(840, 725, "redGem"));
      blocks.add(new Gem(560, 390, "redGem"));
      blocks.add(new Gem(560, 115, "redGem"));
      
      //blueGems
      blocks.add(new Gem(290, 725, "blueGem"));
      blocks.add(new Gem(390, 725, "blueGem"));
      blocks.add(new Gem(740, 835, "blueGem"));
      blocks.add(new Gem(840, 835, "blueGem"));
      blocks.add(new Gem(630, 390, "blueGem"));
      blocks.add(new Gem(630, 115, "blueGem"));
      
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
      blocks.add(new Platform(220, 480, 1020, 30, brown));
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
      // blueGems
      blocks.add(new Gem(830, 830, "blueGem"));
      blocks.add(new Gem(760, 780, "blueGem"));
      blocks.add(new Gem(230, 645, "blueGem"));
      blocks.add(new Gem(330, 645, "blueGem"));
      blocks.add(new Gem(50, 330, "blueGem"));
      blocks.add(new Gem(50, 230, "blueGem"));
      blocks.add(new Gem(50, 130, "blueGem"));
      blocks.add(new Gem(840, 345, "blueGem"));
      blocks.add(new Gem(500, 250, "blueGem"));
      blocks.add(new Gem(350, 60, "blueGem"));
      
      // redGems
      blocks.add(new Gem(335, 830, "redGem"));
      blocks.add(new Gem(405, 780, "redGem"));
      blocks.add(new Gem(830, 645, "redGem"));
      blocks.add(new Gem(930, 645, "redGem"));
      blocks.add(new Gem(1120, 330, "redGem"));
      blocks.add(new Gem(1120, 230, "redGem"));
      blocks.add(new Gem(1120, 130, "redGem"));
      blocks.add(new Gem(330, 345, "redGem"));
      blocks.add(new Gem(665, 250, "redGem"));
      blocks.add(new Gem(815, 60, "redGem"));
      
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
      
      //Jumppads
      blocks.add(new Jumppad(37, 410, 80, 10, color(0, 255, 255), "jumppad"));
      blocks.add(new Jumppad(1083, 410, 80, 10, color(0, 255, 255), "jumppad"));
      
      
      return blocks;
    }
    
    public ArrayList<Block> MapFourBlocks(){
      clearMap();
      // Gems
      blocks.add(new Gem(245, 200, "redGem"));
      blocks.add(new Gem(445, 200, "redGem"));
      blocks.add(new Gem(680, 380, "redGem"));      
      blocks.add(new Gem(850, 420, "redGem"));
      blocks.add(new Gem(1120, 370, "redGem"));
      blocks.add(new Gem(1020, 550, "redGem"));
      blocks.add(new Gem(930, 800, "redGem"));
      blocks.add(new Gem(460, 660, "redGem"));
      blocks.add(new Gem(680, 660, "redGem"));
      blocks.add(new Gem(570, 640, "redGem"));
      
      blocks.add(new Gem(935, 200, "blueGem"));
      blocks.add(new Gem(735, 200, "blueGem"));
      blocks.add(new Gem(500, 380, "blueGem"));
      blocks.add(new Gem(330, 420, "blueGem"));
      blocks.add(new Gem(60, 370, "blueGem"));
      blocks.add(new Gem(160, 550, "blueGem"));
      blocks.add(new Gem(250, 800, "blueGem"));
      blocks.add(new Gem(720, 660, "blueGem"));
      blocks.add(new Gem(500, 660, "blueGem"));
      blocks.add(new Gem(610, 640, "blueGem"));
      
      // Border
      blocks.add(new Platform(0, 0, width, 30, brown));
      blocks.add(new Platform(0, 0, 30, height, brown)); 
      blocks.add(new Platform(0, 870, width, 30, brown));
      blocks.add(new Platform(1170, 0, 30, height, brown)); 
    
      // First Layer
      blocks.add(new Platform(300, 830, 140, 40, brown));
      blocks.add(new Platform(760, 830, 140, 40, brown));
      blocks.add(new Platform(370, 790, 70, 40, brown));
      blocks.add(new Platform(760, 790, 70, 40, brown));
      blocks.add(new Platform(470, 720, 40, 15, brown));
      blocks.add(new Platform(690, 720, 40, 15, brown));
      blocks.add(new Platform(580, 680, 40, 15, brown));
     
     // Second Layer
     // Left
     blocks.add(new Platform(100, 750, 70, 40, brown));
     blocks.add(new Platform(150, 660, 90, 90, brown));
     blocks.add(new Platform(220, 570, 90, 90, brown));
     blocks.add(new Platform(220, 540, 190, 40, brown));
     blocks.add(new Platform(30, 580, 40, 30, brown));
     blocks.add(new Platform(180, 660, 90, 90, brown));
     blocks.add(new Platform(210, 500, 60, 40, brown));
     blocks.add(new Platform(150, 460, 90, 40, brown));
     blocks.add(new Platform(110, 420, 40, 80, brown));
     blocks.add(new Platform(380, 500, 80, 40, brown));
     
     // right
     blocks.add(new Platform(1030, 750, 70, 40, brown));
     blocks.add(new Platform(960, 660, 90, 90, brown));
     blocks.add(new Platform(890, 570, 90, 90, brown));
     blocks.add(new Platform(790, 540, 190, 40, brown));
     blocks.add(new Platform(1130, 580, 40, 30, brown));
     blocks.add(new Platform(930, 660, 90, 90, brown));
     blocks.add(new Platform(930, 500, 60, 40, brown));
     blocks.add(new Platform(960, 460, 90, 40, brown));
     blocks.add(new Platform(1050, 420, 40, 80, brown));
     blocks.add(new Platform(740, 500, 80, 40, brown));
      
     blocks.add(new Platform(450, 460, 300, 40, brown));
     
     //top
     blocks.add(new Platform(30, 200, 100, 40, brown));
     blocks.add(new Platform(120, 240, 100, 40, brown));
     blocks.add(new Platform(210, 280, 100, 40, brown));
     blocks.add(new Platform(300, 240, 100, 40, brown));
     blocks.add(new Platform(390, 280, 100, 40, brown));
     
     blocks.add(new Platform(1070, 200, 100, 40, brown));
     blocks.add(new Platform(980, 240, 100, 40, brown));
     blocks.add(new Platform(890, 280, 100, 40, brown));
     blocks.add(new Platform(800, 240, 100, 40, brown));
     blocks.add(new Platform(710, 280, 100, 40, brown));
     
     
     //Doors
     blocks.add(new Door(50, 790, 60, 80, RED, "fireDoor"));
     blocks.add(new Door(1090, 790, 60, 80, BLUE, "waterDoor"));
     
     //Pool, Toxic, Lava
     blocks.add(new Toxic(440, 845, 320, 25));
     blocks.add(new Lava(270, 520, 110, 20));
     blocks.add(new Pool(820, 520, 110, 20));
     
     
     return blocks;
    }
 }
