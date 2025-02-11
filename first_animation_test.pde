//Allen Jiang
//Animation
//Monday Feb 10

//built in variables include
// -mouseX, mouseY for mouse pointer
int x;

void setup() {
  size(600,600);
  x = 0; //set starting value
} //end of setup

void draw() {
  background(200);
  ellipse(300,x,250,250);
  x = x + 1;
  if (x > 700) {
    x = -100;
  }
} //end of draw setup
