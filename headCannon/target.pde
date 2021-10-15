
//enemy target
void target(float x, float y)
{
  stroke(1);
  fill(#F8FF3E);
  circle(x,y,cSize);
  noStroke();
  fill(#3E3CE5);
  circle(x,y,8 * cSize/12);
  fill(#F01B1B);
  circle(x,y,4 * cSize/12);
  fill(#030303);
  circle(x,y,cSize/12);
}


//freindly target
void tarloose (float x, float y)
{  
  //the head
  fill(#FFEA00);
  ellipse(x,y,cSize,cSize);
 
  //the whites of the eyes
  fill(255);
  ellipse(x - cSize/5,y - 15 * cSize/100,25 * cSize/100,3 * cSize/10);
  ellipse(x + cSize/5,y - 15 * cSize/100,25 * cSize/100,3 * cSize/10);

  //the pupils
  fill(#FF00EF);
  ellipse(x - cSize/5,y - 15 * cSize/100,1 * cSize/10,1 * cSize/10);
  ellipse(x + cSize/5,y - 15 * cSize/100,1 * cSize/10,1 * cSize/10);
  
  //facemask/mouth :)
  fill(#FF05E2);
  rect(x - 3 * cSize/10,y + 5 * cSize/100,6 * cSize/10,32 * cSize/100,200);
  
}


void newTarget()
{
  tPos = new PVector(random(cSize,width - cSize),random(cSize,8 * height/10 - cSize));
  
  //choose target or emoji
  
  if (choice == 1)
  {
    tarX = 0;
    tarY = 0;
    emoX = tPos.x;
    emoY = tPos.y;
  }
  else
  {
    tarX = tPos.x;
    tarY = tPos.y;
    emoX = 0;
    emoY = 0;
  }
  choice = int(random(faceTargetRatio));
  targetUp = true;
}




//check if curser is over current target
void onTargetCheck()
{
  if (allyUp == true)
  {
    if (dist(emoX,emoY,mouseX,mouseY)<=cSize/2)
    {
      onTarget = true;
    }
    else
    {
      onTarget = false;
    }
  }
  else if (enemyUp == true)
  {
    if (dist(tarX,tarY,mouseX,mouseY)<=cSize/2)
    {
      onTarget = true;
    }
    else
    {
      onTarget = false;
    }
  }
}

void bandCheck()
{
  if (dist(tarX,tarY,mouseX,mouseY) <= cSize/24)
  {
    band = 1;
  }
  else if (dist(tarX,tarY,mouseX,mouseY) <= cSize/6)
  {
    band = 2;
  }
  else if (dist(tarX,tarY,mouseX,mouseY) <= cSize/3)
  {
    band = 3;
  }
  else if (dist(tarX,tarY,mouseX,mouseY) <= cSize/2)
  {
    band = 4;
  }
}
