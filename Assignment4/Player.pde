class Player
{
  int pMaxHP = 10, pHP = 10;
  int pMaxMana = 10, pMana = 10;
  int pAttack = 1;
  int pGold = 0;
  
  Player(int atk, int gold)
  {
    pGold = gold;
    pAttack = atk;
  }
}
