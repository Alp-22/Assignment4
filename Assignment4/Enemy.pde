class Enemy
{
  int enemyAttack;
  int enemyHP, enemyMaxHP;
  boolean generated;
  void slime()
  {
    enemyHP = 10;
    enemyMaxHP = 10;
    enemyAttack = 1;
    image(e1, 100, 100);
  }
  void grassMonster()
  {
    enemyHP = 20;
    enemyMaxHP = 20;
    enemyAttack = 3;
  }
  void generateEnemyGrass()
  {
    float r = random(100);
    if (!generated)
    {
      if (r > 50 && r < 100)
      {
        generated = true;
        slime();
      } else if (r < 50)
      {
        generated = false;
        grassMonster();
      }
    }
  }
}
