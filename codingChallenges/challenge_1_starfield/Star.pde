class Star {
  float x;
  float y;
  float z;
  int speed;

  float pz;

  Star() {
    x = random(-width, width);
    y = random(-height, height);
    z = random(width);
    speed = 5;
  }

  void update() {
    z = z-speed;
    if (z<1) {
      z = width;
      x = random(-width, width);
      y = random(-height, height);
      pz = z;
    }
  }
  
  void show() {
    fill(255);
    noStroke();

    float sx = map(x / z, 0, 1, 0, width);
    float sy = map(y / z, 0, 1, 0, height);
    
    float r = map(z, 1, width, 14, 0);

    float px = map(x / pz, 0, 1, 0, width);
    float py = map(y / pz, 0, 1, 0, height);

    ellipse(sx, sy, r, r);
    stroke(255,220);
    strokeWeight(r);
    line(sx, sy, px, py);
    pz = z;
  }
}
