class Enemy
{
  int enemyAttack;
  int enemyHP, enemyMaxHP;
  boolean generated = false;
  PImage generatedEnemy;

  Enemy(boolean g) {
    generated = g;
  }
  void slime()
  {
    enemyHP = 10;
    enemyMaxHP = 10;
    enemyAttack = 1;
    generatedEnemy = e1;
  }
  void bigslime()
  {
    enemyHP = 20;
    enemyMaxHP = 20;
    enemyAttack = 2;
    generatedEnemy = e1;
  }
  void grassMonster()
  {
    enemyHP = 50;
    enemyMaxHP = 50;
    enemyAttack = 3;
    generatedEnemy = e3;
  }
  void grassEye()
  {
    enemyHP = 100;
    enemyMaxHP = 100;
    enemyAttack = 5;
    generatedEnemy = e4;
  }
  void generateEnemyGrass()
  {
    //println(generated);
    if (!generated)
    {
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
      }
    }
  }
  int getStatsAttack()
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
  void setStats(int hp, int hpM, int Atk)
  {
    enemyAttack = Atk;
    enemyHP = hp;
    enemyMaxHP = hpM;
  }
}
