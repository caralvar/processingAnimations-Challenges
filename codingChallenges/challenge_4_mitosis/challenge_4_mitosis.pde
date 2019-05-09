ArrayList<Cell> celulas = new ArrayList<Cell>(); 

void setup() {
  size(600, 600);
  for (int i = 0; i<8; i++) {
    celulas.add(new Cell(40));
  }
}

void draw() {
  background(51);
  //for (int i = 0; i < celulas.size(); i++) {
  //  celulas.get(i).move();
  //  celulas.get(i).show();
  //}
  
  for (Cell a: celulas){
    a.move();
    a.show(); 
  }
  
  
}

void mouseClicked(){
  celulas.add(new Cell(40));
}
