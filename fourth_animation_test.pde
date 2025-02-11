int x;

void setup() {
  size(600,600);
  x = 0; 
}

void draw() {
  background(200);
  ellipse(x,x,200,200);
  x = x + 1;
  if (x > 700) {
    x = -100;
  }
}
