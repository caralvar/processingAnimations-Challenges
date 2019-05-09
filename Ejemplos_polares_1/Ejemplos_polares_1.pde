//Animacion de diagrama polar
float dw = 0.01;
float w = 0;
float wy;
float wx;
void setup() {
  size(500, 500);
  background(0);
  stroke(255);
  translate(width/2,height/2);
  line(width,0,-width,0);
  line(0,height,0,-height);
  frameRate(1000);
}

void draw() {
  translate(width/2,height/2);  
  strokeWeight(2);
  stroke(0,0,255);
  wx = (cos(w)+w*0.5*sin(w))/(1+w*w*0.5*0.5);
  wy = -(w*0.5*cos(w)-sin(w))/(1+w*w*0.5*0.5);
  wy = map(wy,0,1,0,height/2-10);
  wx = map(wx,0,1,0,width/2-10);
  point(wx,wy);
  w = w + dw;
  print(wx);
}