class Enemy
{
  //Enemy stats
  int enemyAttack;
  int enemyHP, enemyMaxHP;
  int goldAmount;
  boolean generated = false;
  PImage generatedEnemy;

  Enemy(boolean g) {
    //Class constructor to define if the enemy has been generated
    generated = g;
  }
  //Set enemy stats corresponding to enemy
  void slime()
  {
    enemyHP = 10;
    enemyMaxHP = 10;
    enemyAttack = 1;
    generatedEnemy = e1;
    goldAmount = 2;
  }
  void bigslime()
  {
    enemyHP = 20;
    enemyMaxHP = 20;
    enemyAttack = 2;
    generatedEnemy = e2;
    goldAmount = 5;
  }
  void grassMonster()
  {
    enemyHP = 50;
    enemyMaxHP = 50;
    enemyAttack = 3;
    generatedEnemy = e3;
    goldAmount = 10;
  }
  void grassEye()
  {
    enemyHP = 100;
    enemyMaxHP = 100;
    enemyAttack = 5;
    generatedEnemy = e4;
    goldAmount = 20;
  }
  void grassKnight()
  {
    enemyHP = 200;
    enemyMaxHP = 200;
    enemyAttack = 10;
    generatedEnemy = e5;
    goldAmount = 100;
  }
  void generateEnemyGrass()
  {
    //println(generated);
    if (!generated)
    {
      //Randomly generate a number between 0-100 to choose which enemy gets picked
      float r = random(100);
      if (r > 70 && r < 100)
      {
        generated = true;
        slime();
      } else if (r > 40 && r < 69)
      {
        generated = true;
        bigslime();
      } else if (r > 10 && r < 39)
      {
        generated = true;
        grassMonster();
      } else if (r < 9)
      {
        generated = true;
        grassEye();
      } else
      {
        generated = true;
        grassKnight();
      }
    }
  }
  /*int getStatsAttack()
  {
    return enemyAttack;
  }
  int getStatsHP()
  {
    return enemyHP;
  }
  int getStatsMaxHP()
  {
    return enemyMaxHP;
  }
  int getGold()
  {
    return goldAmount;
  }*/
  void setStats(int hp, int hpM, int Atk)
  {
    enemyAttack = Atk;
    enemyHP = hp;
    enemyMaxHP = hpM;
  }
}
