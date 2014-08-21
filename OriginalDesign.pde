int circley = 50;
int rectx = 0;

void setup()
{
  size(300,300);
}

void draw()
{
  background(0);
  strokeWeight(1.5);
  stroke(255,0,0);
  fill(170,25,30);
  rect(rectx,30,50,10);
  
  strokeWeight(2);
  stroke(255,255,255);
  fill(50,200,60);
  ellipse(150,circley,80,100);
  
  if(circley < 300)
  {
    circley++;
  }
  else
  {
    circley = 0;
  }
  if(rectx < 300)
  {
    rectx = rectx + 2;
  }
  else
  {
    rectx = -50;
  }
}