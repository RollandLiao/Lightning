int startX = 150;
int startY = 0;
int endX = 150;
int endY = 0;

void setup()
{
  size(300,300);
  strokeWeight(3);
}
void draw()
{
  stroke(255,255,0);
  background(0);
  //stroke(startX*((int)(Math.random()*5)),startY*((int)(Math.random()*3)),endX*((int)(Math.random()*5)));
  while (endY < 301)
  {
    endY = startY + ((int)(Math.random()*10));
    endX = startX + ((int)(Math.random()*19 - 9));
    line(startX,startY,endX,endY);
    startX = endX;
    startY = endY;
  }
  fill(100);
  noStroke();
  ellipse(150,30,30,30);
  ellipse(150-25,30,30,30);
  ellipse(150+25,30,30,30);
  ellipse(150-13,30-20,30,30);
  ellipse(150+13,30-20,30,30);
}
void mousePressed()
{
  startX = 150;
  startY = 0;
  endX = 150;
  endY = 0;
}