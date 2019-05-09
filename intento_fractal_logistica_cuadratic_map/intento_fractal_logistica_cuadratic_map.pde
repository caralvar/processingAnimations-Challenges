import processing.pdf.*;

float xr;
float yo = 1060;
float r = 2.8;
float poblacioninicial;
float valory;
boolean foto = true;
int muestras;
PGraphicsPDF pdf;


void setup() {
  pdf = (PGraphicsPDF) createGraphics(width, height, PDF, "logistic map fractal.pdf");
  size(1920, 1080);
  background(0);
  stroke(255);
  strokeWeight(1);
  //line(0, yo, width, yo);
  //line(xo, 0, xo, height);
  stroke(0, 255, 0, 80);
  frameRate(10000);
  beginRecord(pdf);
  pdf.background(0);
  stroke(0, 255, 0, 80);
}

void draw() {
  poblacioninicial = 0.5;
  if (r<=4.01) {
    for (int i = 0; i<100; i++) {
      valory = abs(r*poblacioninicial*(1-poblacioninicial));
      poblacioninicial = valory;

      if (r<3.44) {
        xr = map(r, 2.8, 3.44, 0, 200);
      }
      if (r>=3.44) {
        xr = map(r, 3.44, 4.01, 200, width);
      }
      float yr = map(valory, 0, 1.2, 0, yo);
      if (r<3.4) {
        muestras = 90;
      } else {
        muestras = 50;
      }
      if (i>muestras) {
        point(xr, yo - yr);
      }
    }
  }

  r = r + 0.0001;
  if (r>4.01&&foto) {
    endRecord();
    foto = false;
  }
}