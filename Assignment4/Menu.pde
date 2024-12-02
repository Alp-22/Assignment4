class Menu
{
  int[] menuX = {0, 0, 0};
  int[] menuY = {200, 400, 600};
  int[] menuSizeX = {400, 400, 400};
  int[] menuSizeY = {100, 100, 100};
  void mainMenu()
  {
    fill(150);
    rect(menuX[0], menuY[0], menuSizeX[0], menuSizeY[0]);
    rect(menuX[1], menuY[1], menuSizeX[1], menuSizeY[1]);
    rect(menuX[2], menuY[2], menuSizeX[2], menuSizeY[2]);
  }
  void worldSelectionMenu()
  {
    
  }
  void fightMenu()
  {
  }
  void shopMenu()
  {
  }
  void inventoryMenu()
  {
  }
}
