Menu m = new Menu();
PImage img1, img2;
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

void setup()
{
  size(800, 800);
  img1 = loadImage("fight.png");
}

void draw()
{
  frameRate(60);
  background(133, 223, 232);
  noStroke();
  if (menuState == 0)
  {
    m.mainMenu();
  }
  if (menuState == 1)
  {
    m.worldSelectionMenu();
  }
  if (menuState == 2)
  {
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

void mouseClicked()
{
  if (menuState == 0)
  {
    if (mouseX >= m.menuX[0] && mouseX <= m.menuSizeX[0]+m.menuX[0] && mouseY >= m.menuY[0] && mouseY <= m.menuSizeY[0]+m.menuY[0])
    {
      menuState = 1;
    }
    if (mouseX >= m.menuX[1] && mouseX <= m.menuSizeX[1]+m.menuX[1] && mouseY >= m.menuY[1] && mouseY <= m.menuSizeY[1]+m.menuY[1])
    {
      menuState = 3;
    }
    if (mouseX >= m.menuX[2] && mouseX <= m.menuSizeX[2]+m.menuX[2] && mouseY >= m.menuY[2] && mouseY <= m.menuSizeY[2]+m.menuY[2])
    {
      menuState = 4;
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
      menuState = 2;
      worldState = 1;
    }
    if (mouseX >= m.menuX[5] && mouseX <= m.menuSizeX[5]+m.menuX[5] && mouseY >= m.menuY[5] && mouseY <= m.menuSizeY[5]+m.menuY[5])
    {
      menuState = 2;
      worldState = 2;
    }
  }
  if (menuState == 2)
  {
    if (mouseX >= m.menuX[6] && mouseX <= m.menuSizeX[6]+m.menuX[6] && mouseY >= m.menuY[6] && mouseY <= m.menuSizeY[6]+m.menuY[6])
    {
    }
    if (mouseX >= m.menuX[7] && mouseX <= m.menuSizeX[7]+m.menuX[7] && mouseY >= m.menuY[7] && mouseY <= m.menuSizeY[7]+m.menuY[7])
    {
    }
    if (mouseX >= m.menuX[8] && mouseX <= m.menuSizeX[8]+m.menuX[8] && mouseY >= m.menuY[8] && mouseY <= m.menuSizeY[8]+m.menuY[8])
    {
    }
    if (mouseX >= m.menuX[9] && mouseX <= m.menuSizeX[9]+m.menuX[9] && mouseY >= m.menuY[9] && mouseY <= m.menuSizeY[9]+m.menuY[9])
    {
    }
  }
}
void mousePressed()
{
  if (menuState == 0)
  {
    if (mouseX >= m.menuX[0] && mouseX <= m.menuSizeX[0]+m.menuX[0] && mouseY >= m.menuY[0] && mouseY <= m.menuSizeY[0]+m.menuY[0])
    {
    }
    if (mouseX >= m.menuX[1] && mouseX <= m.menuSizeX[1]+m.menuX[1] && mouseY >= m.menuY[1] && mouseY <= m.menuSizeY[1]+m.menuY[1])
    {
    }
    if (mouseX >= m.menuX[2] && mouseX <= m.menuSizeX[2]+m.menuX[2] && mouseY >= m.menuY[2] && mouseY <= m.menuSizeY[2]+m.menuY[2])
    {
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
      menuState = 2;
      worldState = 1;
    }
    if (mouseX >= m.menuX[5] && mouseX <= m.menuSizeX[5]+m.menuX[5] && mouseY >= m.menuY[5] && mouseY <= m.menuSizeY[5]+m.menuY[5])
    {
      menuState = 2;
      worldState = 2;
    }
  }
  if (menuState == 2)
  {
    if (mouseX >= m.menuX[6] && mouseX <= m.menuSizeX[6]+m.menuX[6] && mouseY >= m.menuY[6] && mouseY <= m.menuSizeY[6]+m.menuY[6])
    {
    }
    if (mouseX >= m.menuX[7] && mouseX <= m.menuSizeX[7]+m.menuX[7] && mouseY >= m.menuY[7] && mouseY <= m.menuSizeY[7]+m.menuY[7])
    {
    }
    if (mouseX >= m.menuX[8] && mouseX <= m.menuSizeX[8]+m.menuX[8] && mouseY >= m.menuY[8] && mouseY <= m.menuSizeY[8]+m.menuY[8])
    {
    }
    if (mouseX >= m.menuX[9] && mouseX <= m.menuSizeX[9]+m.menuX[9] && mouseY >= m.menuY[9] && mouseY <= m.menuSizeY[9]+m.menuY[9])
    {
    }
  }
