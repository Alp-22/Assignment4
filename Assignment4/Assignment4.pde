Menu m = new Menu();
Enemy e = new Enemy(false);
Player p = new Player();
//Number of image variable corresponds to button array number
PImage b0, b1, b2, b3, b4, b5, b6, b7, b8, b9;
PImage bg, bg1;
PImage lock;
PImage e1, e2, e3, e4;


/*
 0 = Main Menu
 1 = World Selection Menu
 2 = Fight Menu
 3 = Shop Menu
 4 = Inventory Menu
 5 = Game Over Screen
 */
int menuState = 0;
/*
 0 = Grasslands
 1 = ???
 2 = ???
 */
int worldState = 0;
int tempHP;
int tempHPM;
int tempAtk;

void setup()
{
  //Set window size
  size(800, 800);
  //Load lock image
  lock = loadImage("lock.png");
  //Load background images
  bg = loadImage("background.png");
  bg1 = loadImage("backgroundworld1.png");
  //Load button images
  b0 = loadImage("adventure.png");
  b1 = loadImage("shop.png");
  b2 = loadImage("inventory.png");
  b3 = loadImage("world1.png");
  b6 = loadImage("fightbutton.png");
  b7 = loadImage("skillsbutton.png");
  b8 = loadImage("itemsbutton.png");
  b9 = loadImage("runbutton.png");
  //Load enemy images
  e1 = loadImage("slime.png");
  e2 = loadImage("bigslime.png");
  e3 = loadImage("grassmonster.png");
  e4 = loadImage("grasseye.png");
}

void draw()
{
  frameRate(60);
  noStroke();
  //println(e.generated);
  if (menuState == 0)
  {
    //Initialize background based on menu state
    image(bg, 0, 0);
    m.mainMenu();
  }
  if (menuState == 1)
  {
    image(bg, 0, 0);
    m.worldSelectionMenu();
  }
  if (menuState == 2)
  {
    image(bg1, 0, 0);
    m.fightMenu();
  }
  if (menuState == 3)
  {
    m.shopMenu();
  }
  if (menuState == 4)
  {
    m.inventoryMenu();
  }
}

void mouseReleased()
{
  if (menuState == 0)
  {
    if (mouseX >= m.menuX[0] && mouseX <= m.menuSizeX[0]+m.menuX[0] && mouseY >= m.menuY[0] && mouseY <= m.menuSizeY[0]+m.menuY[0])
    {
      tint(100);
      image(b0, m.menuX[0], m.menuY[0]);
      tint(255);
      menuState = 1;
    }
    if (mouseX >= m.menuX[1] && mouseX <= m.menuSizeX[1]+m.menuX[1] && mouseY >= m.menuY[1] && mouseY <= m.menuSizeY[1]+m.menuY[1])
    {
      //menuState = 3;
    }
    if (mouseX >= m.menuX[2] && mouseX <= m.menuSizeX[2]+m.menuX[2] && mouseY >= m.menuY[2] && mouseY <= m.menuSizeY[2]+m.menuY[2])
    {
      //menuState = 4;
    }
  }
  if (menuState == 1)
  {
    if (mouseX >= m.menuX[3] && mouseX <= m.menuSizeX[3]+m.menuX[3] && mouseY >= m.menuY[3] && mouseY <= m.menuSizeY[3]+m.menuY[3])
    {
      menuState = 2;
      worldState = 0;
    }
    if (mouseX >= m.menuX[4] && mouseX <= m.menuSizeX[4]+m.menuX[4] && mouseY >= m.menuY[4] && mouseY <= m.menuSizeY[4]+m.menuY[4])
    {
      //menuState = 2;
      //worldState = 1;
    }
    if (mouseX >= m.menuX[5] && mouseX <= m.menuSizeX[5]+m.menuX[5] && mouseY >= m.menuY[5] && mouseY <= m.menuSizeY[5]+m.menuY[5])
    {
      //menuState = 2;
      //worldState = 2;
    }
  }
  if (menuState == 2)
  {
    if (mouseX >= m.menuX[6] && mouseX <= m.menuSizeX[6]+m.menuX[6] && mouseY >= m.menuY[6] && mouseY <= m.menuSizeY[6]+m.menuY[6])
    {
      tempHP = tempHP - p.pAttack;
      println(tempHP);
      //println(tempHP);
      e.setStats(tempHP, tempHPM, tempAtk);
      println(e.getStatsHP());
      e = new Enemy(false);
      if (tempHP <= 0)
      {
        e.generated = false;
      }
    }
    if (mouseX >= m.menuX[7] && mouseX <= m.menuSizeX[7]+m.menuX[7] && mouseY >= m.menuY[7] && mouseY <= m.menuSizeY[7]+m.menuY[7])
    {
    }
    if (mouseX >= m.menuX[8] && mouseX <= m.menuSizeX[8]+m.menuX[8] && mouseY >= m.menuY[8] && mouseY <= m.menuSizeY[8]+m.menuY[8])
    {
    }
    if (mouseX >= m.menuX[9] && mouseX <= m.menuSizeX[9]+m.menuX[9] && mouseY >= m.menuY[9] && mouseY <= m.menuSizeY[9]+m.menuY[9])
    {
      menuState = 0;
    }
  }
}
