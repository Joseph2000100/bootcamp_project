


void setup()
{
  size(1000, 1000);
  inGame = false;
  onInstructions = false;
  onLeaderboard = false;
  noCursor();
  score = 0;
}

void draw()
{
  background(#90FFFC);
  gameOver = false;
  topScore = false;

  //playing the game
  if (inGame == true)
  {
    noStroke();
    fill(#15BC00);
    rect(0, 8 * width/10, width, height);
    emoji();
    clock();
    score();
    onTargetCheck();
    if (tarX == 0 && tarY == 0)
    {
      tarloose(emoX, emoY);
      enemyUp = false;
      allyUp = true;
    } else if (emoX == 0 && emoY == 0)
    {
      target(tarX, tarY);
      enemyUp = true;
      allyUp = false;
    }
    if (targetUp == false)
    {
      newTarget();
    }

    //when time runs out
    if (round((millis()-startTime)/1000) >= gameTime )
    {
      gameOver = true;
      //work out whether the final score is in the top 5 and if so ask for nickname
      finalScore = score;
      //game over message
      text("-click anywhere-", width/2, 2 * height/3);
      textAlign(CENTER, CENTER);
      fill(255, 0, 0);
      textSize(width/10);
      text("Game Over", width/2, height/3);
    }
  }

  //instructions guide
  else if (onInstructions == true)
  {
    instructions();
  }

  //leaderboard
  else if (onLeaderboard == true)
  {
    leaderboard();
  }

  //menu page
  else
  {
    menu();
  }
  curser();
}

void mousePressed()
{
  //mouse pressing in game
  if (inGame == true)
  {
    if (gameOver == true)//and topscore == false;
    {
      if (mouseButton == LEFT)
      {
        inGame = false;
        score = 0;
      }
    } else
    {
      //target shooting and ally saving
      if ( mouseButton == LEFT)
      {
        bangSE();
        if (allyUp == true && onTarget == true)
        {
          //whatever happens when you shoot an ally
          score = score - 5 * pointScale;
          allyDeathSE();
        } else if (enemyUp == true && onTarget == true)
        {
          hitTargetSE();
          bandCheck();
          //whatever happens when you shoot a target and hit
          if (band == 1)
          {
            score = score + 10 * pointScale;
          } 
          else if (band == 2)
          {
            score = score + 5 * pointScale;
          } 
          else if (band == 3)
          {
            score = score + 3 * pointScale;
          } 
          else if (band == 4)
          {
            score = score + pointScale;
          }
        } else
        {
          //whatever happens when you miss
          score = score - pointScale;
        }
        targetUp = false;
      } else if (mouseButton == RIGHT)
      {
        if (allyUp == true && onTarget == true)
        {
          //whatever happens when you save an ally
          score = score + 5 * pointScale;
          allySavedSE();

          targetUp = false;
        }
      }
    }
  }


  //mouse pressing on instruction page
  else if (onInstructions == true)
  {
    if (mouseOnSketch() == true)
    {
      onInstructions = false;
    }
  }


  //mouse pressing on leaderboard
  else if (onLeaderboard == true)
  {
    if (mouseOnSketch() == true)
    {
      onLeaderboard = false;
    }
  }


  //mouse pressing on the menu
  else
  {
    if (mouseButton == LEFT)
    {
      if (over1() == true)
      {
        startTime = millis();
        inGame = true;
      } else if (over2() == true)
      {
        onLeaderboard = true;
      } else if (over3() == true)
      {
        onInstructions = true;
      }
    }
  }
}
