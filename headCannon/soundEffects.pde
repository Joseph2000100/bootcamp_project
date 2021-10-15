void bangSE ()
{
  bang = new SoundFile(this,"bang.mp3");
  bang.play();
}

void allyDeathSE ()
{
  allyDeath = new SoundFile(this,"allyDeath.mp3");
  allyDeath.play();
}

void hitTargetSE ()
{
  hitTarget = new SoundFile(this,"hitTarget.mp3");
  hitTarget.play();
}

void allySavedSE ()
{
  allySaved = new SoundFile(this,"allySaved.mp3");
  allySaved.play();
}
