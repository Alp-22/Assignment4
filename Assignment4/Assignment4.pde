Menu m = new Menu();

/*
0 = Main Menu
 1 = World Selection Menu
 2 = Fight Menu
 3 = Shop Menu
 4 = Inventory Menu
 */
int menuState = 0;

void setup()
{
  size(800, 800);
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
      menuState = 2;
    }
    if (mouseX >= m.menuX[2] && mouseX <= m.menuSizeX[2]+m.menuX[2] && mouseY >= m.menuY[2] && mouseY <= m.menuSizeY[2]+m.menuY[2])
    {
      menuState = 3;
    }
  }
}
