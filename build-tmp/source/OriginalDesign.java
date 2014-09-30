import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class OriginalDesign extends PApplet {

Ball[] balls;
public void setup()
{
  size(500, 500);
  noStroke();
  balls = new Ball[50];
  for(int i=0; i < balls.length; i++)
  {
    balls[i] = new Ball((int)(Math.random()*500),(int)(Math.random()*500));
  }
}

public void draw()
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
  public void reset()
  {
    if(keyPressed == true && key == ' ')
    {
      myX = (int)(Math.random()*500);
      myY = (int)(Math.random()*500);
    }
  }
  public void move()
  {
    if(mousePressed == true){
    myX = lerp(myX, mouseX, 0.05f);
    myY = lerp(myY, mouseY, 0.05f);
    }
  }
  public void show()
  {
    fill(255, 0, 0);
    ellipse(myX, myY, 50, 50);
  }
}
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "OriginalDesign" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
