void curser()
{
  //crosshair on curser
  stroke(#010003);
  strokeWeight(3);
  line(mouseX,mouseY - height/100,mouseX ,mouseY + height/100);
  line(mouseX-width/100,mouseY,mouseX + width/100,mouseY);
}

boolean mouseOnSketch()
{
  if (mouseX <= width && mouseX >= 0 && mouseY <= height && mouseY >= 0)
  {
    return true;
  }
  else
  {
    return false;
  }
}
