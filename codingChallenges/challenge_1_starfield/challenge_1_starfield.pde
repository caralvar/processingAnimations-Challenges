Star[] stars = new Star[1000]; 

void setup() {
  background(0);
  size(800, 800);
  for (int i = 0; i < stars.length; i++) {
    stars[i] = new Star();
  }
}

void draw() {
  translate(map(mouseX, 0, width, width*2, -width), map(mouseY, 0, height, height*2, -height));
  background(0);
  for (int i = 0; i < stars.length; i++) {
    stars[i].update();
    stars[i].show();
  }
}

void mouseClicked() {
  for (int i = 0; i<stars.length; i++) {
    stars[i].speed++;
    if (stars[i].speed>15) {
      stars[i].speed = 1;
    }
  }
}
