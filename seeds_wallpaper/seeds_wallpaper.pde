int seeds = 6000;
//float ratio = 0.6153877;
float ratio = 0.61803;
float oneOverPhi = 0.61803398875;
float oneOverPi = 0.31830988618;
float oneOverE = 0.36787944117;
boolean loop = true;

void setup() {
  size(2048, 1028);
  background(0);
  noStroke();
}

void draw() {
   noLoop();
  translate(width/2-50, height/2);
  fill(0,0,255);
  ratio = oneOverPhi;
  for (int i = seeds; i > 0; i--) {
    float angle = i*ratio*2*PI;
    float r = 11*sqrt(i);
    float x = r*cos(angle);
    float y = -r*sin(angle);
    ellipse(x, y, 19, 19);
  }
  //seeds = 1500;
  //translate(-700, 0);
  //ratio = oneOverE;
  //fill(0);
  
  //for (int i = seeds; i > 0; i--) {
  //  float angle = i*ratio*2*PI;
  //  float r = 9*sqrt(i);
  //  float x = r*cos(angle);
  //  float y = -r*sin(angle);
  //  ellipse(x, y, 15, 15);
  //}
  
  //translate(2*700, 0);
  //ratio = oneOverPi;
  //fill(0);

  //for (int i = seeds; i > 0; i--) {
  //  float angle = i*ratio*2*PI;
  //  float r = 9*sqrt(i);
  //  float x = r*cos(angle);
  //  float y = -r*sin(angle);
  //  ellipse(x, y, 15, 15);
  //}

  saveFrame();
}