Drop[] drops = new Drop[500];

void setup() {
  size(1000, 500);
  background(51);
  for (int i = 0; i<drops.length; i++) {
    drops[i] = new Drop();
  }
}

void draw() {
  background(51);
  for (int i = 0; i<drops.length; i++) {
    drops[i].fall();
    drops[i].show();
  }
}
