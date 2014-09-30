Ball[] balls;
void setup()
{
  size(500, 500);
  noStroke();
  balls = new Ball[50];
  for(int i=0; i < balls.length; i++)
  {
    balls[i] = new Ball((int)(Math.random()*500),(int)(Math.random()*500));
  }
}

void draw()
{
  fill(255,255,255,100);
  rect(0,0,500,500); 
  for(int i=0; i < balls.length; i++)
  {
    balls[i].reset();
    balls[i].move();
    balls[i].show();
  }
}

class Ball{
  float myX, myY;
  Ball(float x, float y)
  {
    myX = x;
    myY = y;
  }
  void reset()
  {
    if(keyPressed == true && key == ' ')
    {
      myX = (int)(Math.random()*500);
      myY = (int)(Math.random()*500);
    }
  }
  void move()
  {
    if(mousePressed == true){
    myX = lerp(myX, mouseX, 0.05);
    myY = lerp(myY, mouseY, 0.05);
    }
  }
  void show()
  {
    fill(255, 0, 0);
    ellipse(myX, myY, 50, 50);
  }
}