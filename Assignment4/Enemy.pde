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
  void grassMonster()
  {
    enemyHP = 20;
    enemyMaxHP = 20;
    enemyAttack = 3;
    generatedEnemy = e2;
  }
  void generateEnemyGrass()
  {
    //println(generated);
    if (!generated)
    {
      float r = random(100);
      if (r > 50 && r < 100)
      {
        generated = true;
        slime();
      } else if (r < 50)
      {
        generated = true;
        grassMonster();
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
