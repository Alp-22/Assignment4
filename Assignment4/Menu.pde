class Menu
{
  Enemy e = new Enemy(false);
  /*
  0 = Main Menu button
   1 = Shop Button
   2 = Inventory Button
   3 = World 1 Button
   4 = World 2 Button
   5 = World 3 Button
   6 = Fight Button
   7 = Skill Button
   8 = Items Button
   9 = Run Button
   */
  color[] button = {color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0), color(0, 0, 0)};
  int[] menuX = {0, 0, 0, 50, 300, 550, 0, 0, 400, 400};
  int[] menuY = {200, 400, 600, 300, 300, 300, 600, 700, 600, 700};
  int[] menuSizeX = {400, 400, 400, 200, 200, 200, 400, 400, 400, 400};
  int[] menuSizeY = {100, 100, 100, 200, 200, 200, 100, 100, 100, 100};
  PVector enemyPosition = new PVector(200, 150);
  PVector acceleration = new PVector(1, 0);
  PVector velocity = new PVector(0, 1);
  int counter = 0;
  boolean statGen;
  void mainMenu()
  {
    //Set enemy generation to false so another enemy can generate
    e = new Enemy(false);
    statGen = false;
    fill(button[0]);
    //rect(menuX[0], menuY[0], menuSizeX[0], menuSizeY[0]);
    image(b0, menuX[0], menuY[0]);
    fill(button[1]);
    tint(50);
    image(b1, menuX[1], menuY[1]);
    tint(255);
    image(lock, menuX[1]+150, menuY[1], 100, 100);
    //rect(menuX[1], menuY[1], menuSizeX[1], menuSizeY[1]);
    fill(button[2]);
    tint(50);
    image(b2, menuX[2], menuY[2]);
    tint(255);
    image(lock, menuX[2]+150, menuY[2], 100, 100);
    //rect(menuX[2], menuY[2], menuSizeX[2], menuSizeY[2]);
  }
  void worldSelectionMenu()
  {
    fill(150, 150, 150, 155);
    rect(menuX[3], menuY[3], menuSizeX[3], menuSizeY[3]);
    image(b3, menuX[3], menuY[3]);
    rect(menuX[4], menuY[4], menuSizeX[4], menuSizeY[4]);
    image(lock, menuX[4], menuY[4], 200, 200);
    rect(menuX[5], menuY[5], menuSizeX[5], menuSizeY[5]);
    image(lock, menuX[5], menuY[5], 200, 200);
  }
  void fightMenu()
  {
    fill(150);
    stroke(0);
    strokeWeight(8);
    rect(menuX[6], menuY[6], menuSizeX[6], menuSizeY[6]);
    image(b6, menuX[6], menuY[6]);
    tint(50);
    rect(menuX[7], menuY[7], menuSizeX[7], menuSizeY[7]);
    image(b7, menuX[7], menuY[7]);
    tint(255);
    image(lock, menuX[7]+150, menuY[7], 100, 100);
    tint(50);
    rect(menuX[8], menuY[8], menuSizeX[8], menuSizeY[8]);
    image(b8, menuX[8], menuY[8]);
    tint(255);
    image(lock, menuX[8]+150, menuY[8], 100, 100);
    rect(menuX[9], menuY[9], menuSizeX[9], menuSizeY[9]);
    image(b9, menuX[9], menuY[9]);
    fill(255);
    PFont sans = createFont("comicsans.ttf", 128);
    textFont(sans);
    textSize(128);
    noStroke();
    e.generateEnemyGrass();
    if (!statGen)
    {
      tempHP = e.enemyHP;
      tempHPM = e.enemyMaxHP;
      tempAtk = e.enemyAttack;
      statGen = true;
    }
    text(tempHP + "/" + tempHPM, 40, 120);
    image(e.generatedEnemy, enemyPosition.x, enemyPosition.y);
    counter++;
    if (tempHP <= 0)
    {
      tempHP = 0;
      e = new Enemy(false);
      statGen = false;
      
    }
    if (counter < 5)
    {
      //velocity.add(acceleration);
      enemyPosition.add(velocity);
    }
    if (counter > 5 && counter < 10)
    {
      //velocity.sub(acceleration);
      enemyPosition.sub(velocity);
    }
    if (counter == 11)
    {
      counter = 0;
    }
  }
  void shopMenu()
  {
  }
  void inventoryMenu()
  {
  }
}
