int rows, cols;
int scale = 25;
int w = 2000;
int h = 1400;
float time = 0;

float[][] terrain;

void setup() {
  size(1000, 800, P3D);
  cols = w/scale; //column size
  rows = h/scale; //row size
  terrain = new float[cols][rows];
}

void draw() {

  float xoff = 0;
  for (int x = 0; x<cols; x++) {
    float yoff = time;
    for (int y = 0; y<rows; y++) {
      terrain[x][y] = map(noise(xoff, yoff), 0, 1, -200, 200);
      yoff+=0.1;
    }
    xoff+=0.11;
  }  
  time -= 0.046;

  background(51);
  fill(51);
  stroke(255);

  translate(0, height*0.5);
  rotateX(PI*0.42);

  translate(map(mouseX, 0, width, 0, -width), -height, map(mouseY, 0, height, -50, 200));
  for (int y = 0; y < rows-1; y++) {
    beginShape(TRIANGLE_STRIP);
    for (int x = 0; x< cols; x++) {
      vertex(x*scale, y*scale, terrain[x][y]);
      vertex(x*scale, (y+1)*scale, terrain[x][y+1]);
    }
    endShape();
  }
}
