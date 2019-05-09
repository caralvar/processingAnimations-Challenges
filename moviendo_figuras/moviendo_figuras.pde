
Figuras cuadrado;
Figuras circulo;
boolean soltartecla;
float velocidad = 25;
float aceleracion = 0.05;

void setup() {
  size(1020, 780);
  background(0);
  colorMode(HSB, 100, 100, 100, 100);
  float w = width;
  float h = height;
  cuadrado = new Figuras(2, w/2+100, h/2, 100, 100);
  circulo = new Figuras(1, w/2-100, h/2, 100, 100);
  soltartecla = false;
}

void draw() {
  background(0);
  if (cuadrado.seleccion()&&!circulo.seleccion()) {
    cuadrado.arrastre();
  }
  if (circulo.seleccion()&&!cuadrado.seleccion()) {
    circulo.arrastre();
  } 
  if (soltartecla || !circulo.seleccion() || !cuadrado.seleccion()){
    cuadrado.mover();
    circulo.mover();
  }
  cuadrado.dibujarFigura();
  circulo.dibujarFigura();
}

void mouseReleased() {
  soltartecla = true; 
  circulo.velocidadDireccion();
  cuadrado.velocidadDireccion();
}

void mousePressed(){
  soltartecla = false;
}