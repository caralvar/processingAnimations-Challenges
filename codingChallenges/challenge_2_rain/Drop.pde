class Drop {
  float x;
  float y;
  float z;
  float speed;
  float len;

  Drop() {
    x = random(width);
    y = random(-height, 0);
    z = random(0, 60);
    len = map(z, 0, 60, 5, 25);
    speed = map(z, 0, 60, 2, 10);
  }

  void fall() {
    y = y + speed;
    speed = speed + map(z, 0, 60, 0.01, 0.1);
    if (y>height) {
      y = random(-height, 0);
      x = random(width);
      z = random(0, 60);
      len = map(z, 0, 60, 5, 20);
      speed = map(z, 0, 60, 4, 10);
    }
  }

  void show() {
    strokeWeight(map(z, 0, 60, 1, 3));
    stroke(255);
    line(x, y, x, y+len);
  }
}
