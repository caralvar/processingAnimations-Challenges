class Figuras {

  float x, y, ancho, altura, velocidadx, velocidady;
  int figura;
  color c;
  boolean seleccion = false;

  Figuras(int tfigura, float tx, float ty, float tancho, float taltura) {
    figura = tfigura;
    x = tx;
    y = ty;
    ancho = tancho;
    altura = taltura;
  }

  void dibujarFigura() {
    if (figura == 1) {
      ellipse(x, y, ancho, altura);
    }
    if (figura == 2) {
      rectMode(CENTER);
      rect(x, y, ancho, altura);
    }
  }

  boolean seleccion() {
    if (pmouseX<x+ancho/2 && pmouseX>x-ancho/2 && pmouseY<y+altura/2 && pmouseY>y-altura/2 && mousePressed) {
      seleccion = true;
    } else {
      seleccion = false;
    }
    return seleccion;
  }


  void arrastre() {

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
  }

  void velocidadDireccion() {
    if (seleccion) {
      velocidadx = (mouseX-pmouseX);
      velocidady = (mouseY-pmouseY);
    }
    if (velocidadx>velocidad || velocidady>velocidad) {
      float a = velocidadx;
      velocidadx = velocidad*cos(velocidady/velocidadx);
      velocidady = velocidad*sin(velocidady/a);
    }
  }

  void mover() {
    x = x + velocidadx;
    y = y + velocidady;
    if (x>width || x<0) {
      velocidadx = -(velocidadx+1);
    }
    if (y>height || y<0) {
      velocidady = -(velocidady+1);
    }

    if (abs(velocidadx)<0.2 && abs(velocidady)<0.2) {
      velocidadx = 0;
      velocidady = 0;
    } else {
      if (velocidadx>0) {
        velocidadx = velocidadx - aceleracion;
      }
      if (velocidadx<0) {
        velocidadx = velocidadx + aceleracion;
      }
      if (velocidady>0) {
        velocidady = velocidady - aceleracion;
      }
      if (velocidady<0) {
        velocidady = velocidady + aceleracion;
      }
    }
  }
}