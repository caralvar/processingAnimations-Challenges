/*  Cara Feliz Siguiendo al mouse
    programa donde una cara dibujada
    con las funciones ellipse y arc
    sigue la posicion del mouse con
    las variables mouseX y mouseY
    @LuisDiego
*/


void setup(){
  size(1000,700);    //Pantalla de 1000x700 pixeles
  background(255);   //fondo blanco
}

void draw(){
  background(255);    //Repinta el fondo blanco para borrar la cara anterior
  fill(0,255,0);      //Color de la cara Verde
  ellipse(mouseX,mouseY,50,50);  //Ojo izquierdo   
  ellipse(mouseX+80,mouseY,50,50);  //Ojo derecho
  arc( mouseX+40,mouseY+35 ,130 ,50 ,0.0 ,PI ,CHORD);  //Sonrisa
}