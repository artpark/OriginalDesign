//Art Parkeenvincha Block 3, Original Design
void setup() {
  size(500, 500);
  noStroke();
  colorMode(HSB);
  background(0,0,255);
  rectMode(CENTER);
}

//variables
float sz = 50;
float col;
boolean circle = true;

void draw() {
  fill(0,0,0);
  text("Use your scroll wheel!", 380, 490);
  if(circle == true){
    circle(); //draws a circle
  }
  else if(circle == false){
    square(); //draws a square
  }
  println(circle);
} 

void mouseWheel(MouseEvent event) {
  float e = event.getCount(); //scroll wheel controls the size of the circle or square presented on screen
  println(e);
  sz += e;
}

void circle()
{
  fill(col,255,255);
  ellipse(mouseX, mouseY, sz, sz);
  col ++; //HSB color rainbow thing yea
  if(col > 255){
    col = 0;
  }
}

void square()
{
  fill(col,255,255);
  rect(mouseX, mouseY, sz, sz);
  col ++; //HSB color rainbow thing yea
  if(col > 255){
    col = 0;
  }
}

void mousePressed() //boolean square or circle toggle
{
  if(circle == false){
    circle = true;
  }
  else if(circle == true){
    circle = false;
  }
}
