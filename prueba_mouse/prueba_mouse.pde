float angle = 0;
float speed = 4;
float radius = 120;
int lag = 50;
int size = 150;
float[][] pos = new float[lag][2]; 

void setup() {
  size(600, 600);
  noStroke();
  fill(255);
}

void draw() {
  background(0);
  //translate(width*0.5, height*0.5) ;
  translate(mouseX, mouseY);

  //pos[0][0] = mouseX;
  //pos[0][1] = mouseY;
  pos[lag - 1][0] = radius*cos(radians(angle));
  pos[lag - 1][1] = -radius*sin(radians(angle));

  for (int j = 0; j<lag; j++) {
    fill(j*255/lag, 90);
    ellipse(pos[j][0], pos[j][1], size/lag*j, size/lag*j);
    //ellipse(10*cos(angle), 10*sin(angle), j, j);
  }

  for (int j = 0; j < lag -1; j++) {
    pos[j][0] = pos[j+1][0];
    pos[j][1] = pos[j+1][1];
  }

  angle -= speed;
}