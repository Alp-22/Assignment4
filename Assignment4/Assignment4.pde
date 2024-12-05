Menu m = new Menu();
Enemy e = new Enemy(false);
Player p = new Player(1,0);
//Number of image variable corresponds to button array number
PImage b0, b1, b2, b3, b4, b5, b6, b7, b8, b9;
//Load extra images, backgrounds and enemies
//Bg stands for background e stands for enemy
PImage logo, lock, life, gold;
PImage bg, bg1;
PImage e1, e2, e3, e4, e5;


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
//Temp variables to store enemy data
int tempHP;
int tempHPM;
int tempAtk;

void setup()
{
  //Set window size
  size(800, 800);
  //Load lock image
  lock = loadImage("lock.png");
  logo = loadImage("taprpg.png");
  life = loadImage("life.png");
  gold = loadImage("goldicon.png");
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
  e5 = loadImage("grassknight.png");
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
    //open the main menu
    m.mainMenu();
  }
  if (menuState == 1)
  {
    image(bg, 0, 0);
    //open the world selection menu
    m.worldSelectionMenu();
  }
  if (menuState == 2)
  {
    //change the background to background1
    image(bg1, 0, 0);
    //open the fight menu
    m.fightMenu();
  }
  if (menuState == 3)
  {
    //Menu state 3 and 4 are defunct and haven't been implemented
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
      //Tint the button when moving to make it have the visual of being clicked
      tint(100);
      image(b0, m.menuX[0], m.menuY[0]);
      tint(255);
      //Switch to menu state 1
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
      //Go to fight menu state
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
      //Whenever the fight button is clicked subtract enemy hp by attack stat
      tempHP = tempHP - p.pAttack;
      //println(tempHP);
      //println(tempHP);
      e.setStats(tempHP, tempHPM, tempAtk);
      //println(e.getStatsHP());
      e = new Enemy(false);
      if (tempHP <= 0)
      {
        //disable generation when enemy dies so that it generates another enemy
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
      //Go back to menu when fleeing
      menuState = 0;
    }
  }
}
