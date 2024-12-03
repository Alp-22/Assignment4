class Menu
{
  /*
  0 = Main Menu button
   1 = Shop Button
   2 = Inventory Button
   */
  color[] button = {color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0)};
  int[] menuX = {0, 0, 0, 50, 300, 550, 0, 0, 400, 400};
  int[] menuY = {200, 400, 600, 300, 300, 300, 600, 700, 600, 700};
  int[] menuSizeX = {400, 400, 400, 200, 200, 200, 400, 400, 400, 400};
  int[] menuSizeY = {100, 100, 100, 200, 200, 200, 100, 100, 100, 100};
  void mainMenu()
  {
    fill(button[0]);
    //rect(menuX[0], menuY[0], menuSizeX[0], menuSizeY[0]);
    image(img1, menuX[0], menuY[0]);
    fill(button[1]);
    rect(menuX[1], menuY[1], menuSizeX[1], menuSizeY[1]);
    fill(button[2]);
    rect(menuX[2], menuY[2], menuSizeX[2], menuSizeY[2]);
  }
  void worldSelectionMenu()
  {
    fill(150);
    rect(menuX[3], menuY[3], menuSizeX[3], menuSizeY[3]);
    rect(menuX[4], menuY[4], menuSizeX[4], menuSizeY[4]);
    rect(menuX[5], menuY[5], menuSizeX[5], menuSizeY[5]);
  }
  void fightMenu()
  {
    fill(150);
    stroke(0);
    strokeWeight(8);
    rect(menuX[6], menuY[6], menuSizeX[6], menuSizeY[6]);
    rect(menuX[7], menuY[7], menuSizeX[7], menuSizeY[7]);
    rect(menuX[8], menuY[8], menuSizeX[8], menuSizeY[8]);
    rect(menuX[9], menuY[9], menuSizeX[9], menuSizeY[9]);
    noStroke();
  }
  void shopMenu()
  {
  }
  void inventoryMenu()
  {
  }
}
