// Enda Tong

class Player {
  // member variaable
  int x,y,w,h;
  color c1;
  PImage p1;

  // Constructor
  Player() {
  x = 50;
  y = 50;
  w = 50;
  h = 50;
  c1 = color(111);
  p1 = loadImage("biplane.png");
  }
  // Member Methods
  void display () {
    // todo: add image and remove rect
    image(p1,x,y);
  }
  void move (char dir) {}
}
