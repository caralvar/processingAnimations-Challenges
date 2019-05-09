

Figuras circulo;
Figuras cuadrado;

void setup() {
  size(1000, 800);
  colorMode(HSB, 100, 100, 100, 100);
  noStroke();
  rectMode(CENTER);
  cuadrado = new Figuras(100, 100, 100, 100, 2, color(50, 50, 100, 50));
  circulo = new Figuras(800, 500, 100, 100, -2, color(50, 50, 100, 50));
}

void draw() {
  background(0);  
  cuadrado.moverycolor();
  if (circulo.arrastrar == false) {
    circulo.moverycolor();
  }
  cuadrado.rectangulo();
  circulo.elipse();
}

void mousePressed() {
  arrastrarfigura(cuadrado);
  arrastrarfigura(circulo);
}

void mouseReleased() {
  circulo.arrastrar = false;
  cuadrado.arrastrar = false;
}

void arrastrarfigura(Figuras a) {
  if (mouseX < a.x +a.ancho/2 && mouseX > a.x - a.ancho/2 && 
    mouseY < a.y + a.ancho/2 && mouseY > a.y - a.ancho/2) {
    a.arrastrar = true;
  } else {
    a.arrastrar = false;
  }
}