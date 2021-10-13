void instructions()
{
  //title
  textAlign(CENTER,TOP); 
  textSize(width/8);
  fill(#FF721A);
  text("Instructions",width/2,height/100);
  
  //instructions content box
  noStroke();
  fill(#FFD1F9);
  rect(width/20, height/6, 9 * width/10, 9 * height/12, 50);
  
  //text
  instructionText = "1. Aim with curser" + "\n" + "2. Left click to shoot targets" + "\n" + "3. Right click allies to rescue them" + "\n" + "4. Get as many points as you can in 60 seconds";
  
  fill(#0063FF);
  textSize(width/17);
  textAlign(LEFT,TOP);
  text(instructionText,width/15,height/5,13 * width/15, height/2);
  textAlign(CENTER,CENTER);
  textSize(width/10);
  text("Have Fun!!!", width/2, 9 * height/12);
  textSize(width/50);
  text("-click anywhere to exit-", width/2, 41 * height/48);
}
