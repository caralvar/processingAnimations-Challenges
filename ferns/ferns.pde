
// hoja 
float[][] limits = {{-2.1820,2.6558 },{0,10.2}};
float[] trans1 = {0.0, 0.0, 0.0, 0.16, 0.0, 0.0, 0.01};
float[] trans2 = {0.85, 0.04, -0.04, 0.85, 0.0, 1.60, 0.85};
float[] trans3 = {0.20, -0.26, 0.23, 0.22, 0.0, 1.60, 0.06};
float[] trans4 = {-0.15, 0.28, 0.26, 0.24, 0.0, 0.44, 0.07};

// arbol
//float[][] limits = {{-0.25,0.25},{0.0,0.47}};
//float[] trans1 = {0.0, 0.0, 0.0, 0.5, 0.0, 0.0, 0.05};
//float[] trans2 = {0.42, -0.42, 0.42, 0.42, 0, 0.2, 0.4};
//float[] trans3 = {0.42, 0.42, -0.42, 0.42, 0, 0.2, 0.4};
//float[] trans4 = {0.1, 0.0, 0.0, 0.1, 0.0, 0.2, 0.15};

// serpinsky
//float[][] limits = {{0.0, 102},{0.0, 102}};
//float[] trans1 = {0.5, 0.0, 0.0, 0.5, 1.0, 1.0, 0.33};
//float[] trans2 = {0.5, 0.0, 0.0, 0.5, 1.0, 50.0, 0.33};
//float[] trans3 = {0.5, 0.0, 0.0, 0.5, 50.0, 50.0, 0.34};
//float[] trans4 = {0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0};

//
float[] pos = {0.0, 0.0};
float rand;
int speed = 50;

void setup() {
  size(800, 800);
  background(0);
  strokeWeight(1);
  stroke(#52E825, 200);
}

void draw() {
  for (int i = 0; i<speed; i++) {
    float x = map(pos[0], limits[0][0], limits[0][1], 0, width);
    float y = map(pos[1], limits[1][1], limits[1][0], 0, height);
    point(x,y);
    rand = random(1);
    if (rand<trans1[6]) {
      pos = nuevoPunto(pos, trans1);
    } else if (rand<trans1[6]+trans2[6]) {
      pos = nuevoPunto(pos, trans2);
    } else if (rand<trans1[6]+trans2[6]+trans3[6]) {
      pos = nuevoPunto(pos, trans3);
    } else {
      pos = nuevoPunto(pos, trans4);     
    }
  }
  
}

float[] nuevoPunto(float[] posicion, float[] trans) {
  float[] nuevo = new float[2];
  nuevo[0] = trans[0]*posicion[0]+trans[1]*posicion[1]+trans[4]; 
  nuevo[1] = trans[2]*posicion[0]+trans[3]*posicion[1]+trans[5];
  return nuevo;
}
