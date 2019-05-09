float angle;
float reduc;

void setup() {
  size(600, 600);
  background(51);
  stroke(255);
}

void draw() {
  background(51);
  translate(width*0.5, height*0.9);
  angle = map(mouseX,0,width,0,PI);
  reduc = map(mouseY,0,height,0.5,0.7);
  rama(150, 4, angle, reduc);
}

void rama(float largo, int fin, float angulo, float reduc) {
  line(0, 0, 0, -largo);
  translate(0, -largo);
  if (largo > fin) {
    pushMatrix();
    rotate(angulo);
    rama(largo*reduc, fin, angulo,reduc);
    popMatrix();
    pushMatrix();
    rotate(-angulo);
    rama(largo*reduc, fin, angulo,reduc);
    popMatrix();
  }
}
