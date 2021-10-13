void menu ()
{
  //logo at top of screen
  logo = loadImage("cannonHeadLogo.png");
  image(logo, 0, 0, width, height/2);

  //option boxes
  noStroke();
  fill(#B400FC, 170);
  rect(width/4, height/2, width/2, height/8, 100);
  rect(width/4, 2 * height/3, width/2, height/8, 100);
  rect(width/4, 5 * height/6, width/2, height/8, 100);

  //text for boxes
  stroke(10);
  textAlign(CENTER, CENTER);
  textSize(6 * width/100);
  fill(#FC7200);
  text("-Play Game-", width/2, 9 * height/16);
  text("-Leaderboard-", width/2, 35 * height/48);
  text("-Instructions-", width/2, 43 * height/48);
}

//detect if mouse is over any options
boolean over1()  {
  if (mouseX >= width/4 && mouseX <= 3 * width/4 && 
      mouseY >= height/2 && mouseY <= 5 * height/8) {
    return true;
  } else {
    return false;
  }
}
boolean over2()  {
  if (mouseX >= width/4 && mouseX <= 3 * width/4 &&  
      mouseY >= 2 * height/3 && mouseY <= 19 * height/24) {
    return true;
  } else {
    return false;
  }
}
boolean over3()  {
  if (mouseX >= width/4 && mouseX <= 3 * width/4 && 
      mouseY >= 5 * height/6 && mouseY <= 23 * height/24) {
    return true;
  } else {
    return false;
  }
}
