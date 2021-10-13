void score()
{
  String scoreString = str(score);
  fill(0);
  textSize(width/30);
  textAlign(CENTER, TOP);
  text("score: " + scoreString, width/2, height/50);
}
