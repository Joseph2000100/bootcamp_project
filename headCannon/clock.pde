void clock()
{
  int timeLeft = constrain(gameTime - round((millis()-startTime)/1000),0,gameTime);
  String timeString = str(timeLeft);
  fill(0);
  textSize(width/30);
  textAlign(LEFT, TOP);
  text("time: " + timeString, width/50, height/50);
}
