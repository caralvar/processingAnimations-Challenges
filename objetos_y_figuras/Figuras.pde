class Figuras {

  float x;
  float y;
  float ancho;
  float altura;
  float velocidadx;
  float velocidady;
  color c;
  boolean arrastrar = false;

  Figuras( float tempx, float tempy, float tempancho, float tempaltura, float tempvel, color tempc) {
    x = tempx;
    y = tempy;
    ancho = tempancho;
    altura = tempaltura;
    c = tempc;
    velocidadx = tempvel;
    velocidady = tempvel;
  }

  void elipse() {
    fill(c);
    if (arrastrar) {
      x = mouseX;
      y = mouseY;
      if (mouseX>width) {
        x = width;
      }
      if (mouseX<0) {
        x = 0;
      }
      if (mouseY>height) {
        y = height;
      }
      if (mouseY<0) {
        y = 0;
      }
      c = color(x/10.0, 100, 100, 50);
    }
    ellipse(x, y, ancho, altura);
  }

  void rectangulo() {
    fill(c);
    if (arrastrar) {
      x = mouseX;
      y = mouseY;
            if (mouseX>width) {
        x = width;
      }
      if (mouseX<0) {
        x = 0;
      }
      if (mouseY>height) {
        y = height;
      }
      if (mouseY<0) {
        y = 0;
      }
      c = color(x/10.0, 100, 100, 50);
    }
    rect(x, y, ancho, altura);
  }

  void moverycolor() {
    x = x+velocidadx;
    y = y+velocidady;
    if (x > width | x<0) {
      velocidadx  = -1.0*velocidadx;
    }
    if (y > height | y<0) {
      velocidady  = -1.0*velocidady;
    }
    c = color(x/10.0, 100, 100, 50);
  }
}