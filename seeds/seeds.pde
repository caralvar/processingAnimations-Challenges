int seeds = 750;
//float ratio = 0.6153877;
float ratio = 6/100.0;
float oneOverPhi = 0.618034;
boolean loop = true;

void setup() {
  size(1600, 900);
  background(0);
  frameRate(700);
  println(oneOverPhi);
}

void draw() {
  if (ratio == oneOverPhi) {
    while (loop) {
      noLoop();
      saveFrame();
      delay(5000);
      loop = false;
    }
    loop();
    ratio = 0.618036;
  }

  if (ratio <= 0.618035 && ratio >= 0.618033) {
    ratio = oneOverPhi;
  }
  background(0);
  translate(width/2, height/2);
  fill(0, 0, 255);
  //ellipse(0, 0, 20, 20);
  fill(255, 0, 40);

  for (int i = seeds; i > 0; i--) {
    float angle = i*ratio*2*PI;
    float r = 16*sqrt(i);
    float x = r*cos(angle);
    float y = -r*sin(angle);
    ellipse(x, y, 20, 20);
  }
  println(ratio);

  if (ratio != oneOverPhi) {
    ratio += 0.000002;
  } else {
    textSize(40);
    fill(0,255,0);
    text("1/ϕ ≈ 0.6180339", 250, 380);
  }
}