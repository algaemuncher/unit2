int x;

void setup() {
  size(600,600);
  x = 600; 
}

void draw() {
  background(200);
  ellipse(x,300,250,250);
  x = x - 1;
  if (x < -100) {
    x = 700;
  }
}
