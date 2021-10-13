void emoji()
{
  emojiPos = new PVector(width/2,93*height/100);
  
  noStroke();

  //the head
  fill(#FFEA00);
  ellipse(emojiPos.x,emojiPos.y,width/10,width/10);
 
  //the whites of the eyes
  fill(255);
  ellipse(emojiPos.x - width/50,emojiPos.y - 15 * height/1000,25 * width/1000,3 * height/100);
  ellipse(emojiPos.x + width/50,emojiPos.y - 15 * height/1000,25 * width/1000,3 * height/100);

  //the pupils
  fill(#FF00EF);
  ellipse(emojiPos.x - width/50,emojiPos.y - 15 * height/1000,1 * width/100,1 * height/100);
  ellipse(emojiPos.x + width/50,emojiPos.y - 15 * height/1000,1 * width/100,1 * height/100);
  
  //facemask/mouth :)
  fill(#FF05E2);
  rect(emojiPos.x - 3*width/100,emojiPos.y + 5 * height/1000,6 * width/100,32 * height/1000,200);
  
  //cannon
  fill(#BC0000);
  rect(width/2 - width/100,81 * height/100,2 * width/100,7 * height/100);
}
