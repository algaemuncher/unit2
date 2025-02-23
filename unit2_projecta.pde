float centerX;
float centerY;
float radius;
float angle;
float z;
float mcar;
int road1;
int road2;
int road3;
int road4;
int road5;
float r;
float g;
int b;
//variables setup
void setup(){
  size(600,500,P2D);
  centerX = 165;
  centerY = 395;
  radius = 27;
  angle = 0;
  road1 = 700;
  road2 = 500;
  road3 = 300;
  road4 = 100;
  road5 = -100;
}

void draw(){
  //gradient
  background(13,0,10);
  r = 13;
  g = 0;
  b = 10;
  for (int i = 25; i < 460; i++){
    r = r + 1;
    g = g + 0.5;
    stroke(r,g,b);
    strokeWeight(2);
    line(0,2*i,600,2*i);
  }
  //road
  strokeWeight(1);
  noStroke();
  fill(60,65,70);
  rect(0,360,600,300);
  //yellow road rectangles
  for (int i = 0; i <= 8; i++) {
    fill(250, 242, 93);
    rect(road1, 413, 75, 40);
    rect(road2, 413, 75, 40);
    rect(road3, 413, 75, 40);
    rect(road4, 413, 75, 40);
    rect(road5, 413, 75, 40);
  }
  road1 = road1 - 5;
  road2 = road2 - 5;
  road3 = road3 - 5;
  road4 = road4 - 5;
  road5 = road5 - 5;
  if (road1 < -100) {
    road1 = 700;
  }
  if (road2 < -100) {
    road2 = 700;
  }
  if (road3 < -100) {
    road3 = 700;
  }
  if (road4 < -100) {
    road4 = 700;
  }
  if (road5 < -100) {
    road5 = 700;
  }
  //car + bounce
  float cy = 311 + cos(mcar);
  car(313, cy);
  mcar += 0.125;
  //first tire (triangulation ver.)
  noStroke();
  fill(49);
  ellipse(165, 395, 100, 100);
  fill(148);
  ellipse(165, 395, 45, 45);
  angle += 0.1;
  float x = centerX + radius * cos(angle);
  float y = centerY + radius * sin(angle);
  noStroke();
  fill(79);
  pushMatrix();
  translate(x, y);
  z += 0.1;
  rotate(z);
  ellipse(0, 0, 10, 25);
  popMatrix();
  //second tire (complex shape ver.)
  secondtire(461, 395, angle);
}
void secondtire(int a, int b, float angle) {
  pushMatrix();
  translate(a, b);
  noStroke();
  angle = angle + 0.015;
  rotate(angle);
  fill(49);
  ellipse(0, 0, 100, 100);
  fill(148);
  ellipse(0, 0, 45, 45);
  fill(79);
  ellipse(0, 26, 25, 10);
  popMatrix();
}
void car(int x, float y) {
  pushMatrix();
  translate(x, y);
  fill(49, 204, 188);
  noStroke();
  //body
  quad(-188, 36,-155,-55,140,-55,188,36);
  rect(-91,35,184,39);
  triangle(-106,33,-89,54,-87,33);
  triangle(106,33,89,54,87,33);
  //window
  fill(232, 235, 167);
  quad(110,16,110,-33,139,-33,162,16);
  quad(39,-12,46,-39,80,-39,73,-12);
  fill(228, 235, 49);
  textSize(60);
  strokeWeight(5);
  text("ford",-98,11);
  noFill();
  //tire bases
  stroke(49,204,188);
  strokeWeight(7);
  arc(-147,64,110,80,3.85,6.5);
  arc(147,64,110,80,2.95,6.05);
  //doors
  stroke(0);
  line(-20,30,-10,30);
  line(60,30,70,30);
  strokeWeight(1.5);
  line(25,75,25,-4);
  line(25,-4,36,-54);
  line(-123,38,-123,-17);
  line(-123,-17,-112,-54);
  line(-179,14,-123,14);
  line(84,75,84,-4);
  line(84,-4,96,-54);
  popMatrix();
}
