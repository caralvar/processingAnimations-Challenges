class Cell {
  float x = random(width);
  float y = random(height); 
  float r;
  color c = color(random(100, 255), 0, random(100, 255));

  //Cell(float x, float y, float r) {
  Cell(float r) {
    //this.x = x;
    //this.y = y;
    this.r = r;
  }

  void move() {
    x += random(-3, 3);
    y += random(-3, 3);
  }

  void show() {
    noStroke();
    fill(c);
    ellipse(x, y, r, r);
  }
}
