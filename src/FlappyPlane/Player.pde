// Enda Tong

class Player {
  // member variaable
  int x,y,w,h
  color c1;
  PImage plane;

  // Constructor
  Player() {
  x = 50
  y = 50
  w = 50
  h = 50
  c1 = color();
  p1 = loadImage("");
  }
  // Member Methods
  void display () {
    // todo: add image and remove rect
    // image(p1,x,y);
    fill(c1);
    rect(x,y,w,h);
  }
  void move (char dir) {}
}
