int cSize;
  
void target()
{
  cSize = 9 * width/100;
  PVector tPos;
  //tPos = new PVector(random(cSize/2,width - cSize/2),random(cSize/2,8 * height/10 - cSize/2));
  tPos = new PVector(width/2,height/2);
  
  stroke(1);
  fill(#F8FF3E);
  circle(tPos.x,tPos.y,cSize);
  noStroke();
  fill(#3E3CE5);
  circle(tPos.x,tPos.y,8 * cSize/12);
  fill(#F01B1B);
  circle(tPos.x,tPos.y,4 * cSize/12);
  fill(#030303);
  circle(tPos.x,tPos.y,cSize/12);
}

//void tarloose ()
//{
//  PVector tPos;
//  tPos = new PVector(width/2,height/2);
  
//  //the head
//  fill(#FFEA00);
//  ellipse(tPos.x,tPos.y,cSize,cSize);
 
//  //the whites of the eyes
//  fill(255);
//  ellipse(tPos.x - cSize/5,tPos.y - 15 * cSize/100,25 * cSize/100,3 * cSize/10);
//  ellipse(tPos.x + cSize/5,tPos.y - 15 * cSize/100,25 * cSize/100,3 * cSize/10);

//  //the pupils
//  fill(#FF00EF);
//  ellipse(tPos.x - cSize/5,tPos.y - 15 * cSize/100,1 * cSize/10,1 * cSize/10);
//  ellipse(tPos.x + cSize/5,tPos.y - 15 * cSize/100,1 * cSize/10,1 * cSize/10);
  
//  //facemask/mouth :)
//  fill(#FF05E2);
//  rect(tPos.x - 3 * cSize/10,tPos.y + 5 * cSize/100,6 * cSize/10,32 * cSize/100,200);
  
//}
