int x;
int z;

void setup() {
  size(600,600);
  x = 0;
  z = 0;
}

void draw() {
  background(200);
  ellipse(x,200,z,z);
  x = x + 3;
  z = z + 1;
  if (x > 700) {
    x = -100;
    z = 0;
  }
}
