float x, y;
float z = 150;
float m, n;
float p = 0.05;
float o = 0.05;

void setup()
{
  size(300,300,P3D);
  background(0);
  frameRate(25);
}

void draw()
{  
  background(0);
  
  pointLight(240,240,250,mouseX,mouseY,z);
  
  translate(mouseX,mouseY,z);
  
  rotateX(0);
  rotateY(0);
  
  stroke(random(255),random(255),random(255),45);
  noFill();
  sphere(10);
  
  translate(-mouseX,-mouseY,-z);
  
  translate(150+m,150+n,0);
  
  rotateX(x);
  rotateY(y);
  
  noStroke();
  fill(255,200,100);
  box(100);
  sphere(65);
  
  translate(-(150+m),-(150+n),0); 
  
  x = x + p;
  y = y - o;
}

void keyPressed()
{
  //translation x-change
  if(key == 'd')
  {
    m = m + 10;
  }
  
   if(key == 'a')
  {
    m = m - 10;
  }
 
  if(key == 's')
  {
    n = n + 10;
  }
  
  if(key == 'w')
  {
    n = n - 10;
  }
  
  //center figure x-speed
  if(key == '1')
  {
    p = p + 0.05;
  }
  
  if(key == '2')
  {
    p = p - 0.05;
  }
  
  //center figure y-speed
  if(key == '3')
  {
    o = o + 0.05;
  }
  
  if(key == '4')
  {
    o = o - 0.05;
  }
  
  //camera/camera-disco-ball z-value
  if(key == 'z')
  {
    z = z + 10;
  }
  
  if(key == 'x')
  {
    z = z - 10;
  }
  
  if(key == 'c')
  {
    z = 150;
  }
}