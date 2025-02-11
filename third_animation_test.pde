int x;

void setup() {
  size(600,600);
  x = 0; 
}

void draw() {
  background(200);
  ellipse(300,300,x,x);
  x = x + 1;
  if (x > 850) {
    x = 0;
  }
}
