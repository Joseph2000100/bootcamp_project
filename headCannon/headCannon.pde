void setup()
{
  size(1000, 1000);
  inGame = false;
  onInstructions = false;
  onLeaderboard = false;
  noCursor();
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
    
    //when time runs out
    if (round((millis()-startTime)/1000) >= gameTime )
    {
      gameOver = true;
      //work out whether the final score is in the top 5 and if so ask for nickname
      finalScore = score;
      score = 0;
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
    if (gameOver == true)
    {
      if (mouseButton == LEFT)
      {
        inGame = false;
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
