/*

*/




int backColor = 0;
int pointerColor = 0;
String fileNames;
boolean fileFound = false;
String[] savedData = new String[2];
String path;

void setup() { 
  path = sketchPath();
  String[] fileNames = listFileNames(path);
  for (int i = 0; i < fileNames.length; i++) {
    if (fileNames[i].equals("datos.txt") == true) {
      fileFound = true;
    }
  } 
  if (fileFound == false) {
    for (int i = 0; i < savedData.length; i++){
      savedData[i] = "0.0";
    }
    saveStrings("datos.txt", savedData);
  } else {
    savedData = loadStrings("datos.txt");
  }
  
  backColor = int(savedData[0]);
  pointerColor = int(savedData[1]);

  size(400, 400);
  background(backColor);
}

void draw() {
  background(backColor);
  fill(pointerColor);
  ellipse(mouseX, mouseY, 30, 30);
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      backColor += 10;
      if (backColor > 255) {
        backColor = 0;
      }
    }
    if (keyCode == DOWN) {
      backColor -= 10;
      if (backColor < 0) {
        backColor = 255;
      }
    }
    if (keyCode == RIGHT) {
      pointerColor += 10;
      if (pointerColor > 255) {
        pointerColor = 0;
      }
    }
    if (keyCode == LEFT) {
      pointerColor -= 10;
      if (pointerColor < 0) {
        pointerColor = 255;
      }
    }
  }
  if (key == 32) {
    savedData[0] = str(backColor);
    savedData[1] = str(pointerColor);
    saveStrings("datos.txt", savedData);
  }
}

String[] listFileNames(String dir) {
  File file = new File(dir);
  if (file.isDirectory()) {
    String names[] = file.list();
    return names;
  } else {
    // If it's not a directory
    return null;
  }
}