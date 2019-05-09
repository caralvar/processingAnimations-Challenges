//Jugando con Colores en Processing
//Ejemplo sencillo para entender como funcionan los colores
//y sus modelos en esta plataforma.
//@CarlosA

void setup(){
  size(400,400); //Tamano de la pantalla
  background(0);  //Se establece el color del fonde en negro
  noStroke();     //Se elimina el contorno de las figuras por dibujar
  colorMode(HSB,400,100,100,100);  //Se cambia el modo de color por HSB
                               //el default es RGB, esto para variar
}                              //entre colores con mayor facilidad
                               //Se establecen los valores maximos para HUE, SATURATION,BRIGHTNES, ALPHA(transparencia)
void draw(){                    //Funcion dibujar (loop)

  if (mousePressed){                //Condicion presionar el mouse
    fill(mouseX, mouseY/4, 100, 50);
                                    
                                    //Se establesce el Hue y la saturacion
                                    //de acuerdo a la posicion del mouse
                                    //el brillo en 100 y la transparencia en 50
    ellipse(mouseX, mouseY, 5, 5);  //se dibuja una elipse con ese relleno
  
  }
  
}