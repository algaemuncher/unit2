int x;
int z;

void setup() {
  size(600,600);
  x = 0;
  z = 700;
}

void draw() {
  background(200);
  ellipse(200,x,200,200);
  ellipse(400,z,200,200);
  x = x + 1;
  z = z - 1;
  if (x > 700) {
    x = -100;
  }
  if (z < -100) {
    z = 700;
  }
}
