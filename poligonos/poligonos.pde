int i;
int initr;
float angle = 0;

void setup() {
  size(800, 800);
  strokeWeight(2);
  //noLoop();
}

void draw() {
  translate(width*0.5, height*0.5);
  //rotate(radians(angle));
  //angle -= 0.2;
  background(255);
  noFill();
  float radius = 80;
  float pradius;
  for (int i = 0; i < 13; i++) {
    int sides = i + 3;
    pushMatrix(); 
    if (sides % 2 == 0) { 
      rotate(radians(180/sides));
    }
    polygon(0, 0, sides, radius);
    popMatrix();
    pradius = radius;
    radius = radius * sin(PI/sides) / sin(PI/(sides + 1));
    //println(radius - pradius);
  }
  point(0, 0);
}


void polygon(float x, float y, int v, float r) {
  pushMatrix();
  translate(x, y);
  beginShape();
  if (v == 0) {
    ellipse(0, 0, r*2, r*2);
  } else {
    float a;

    for (int i = 0; i < v; i++) {
      a = radians(i * 360/v + 90);
      vertex(r*cos(a), -r*sin(a));
    }
  }
  endShape(CLOSE);
  popMatrix();
}