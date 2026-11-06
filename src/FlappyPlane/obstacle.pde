// Jaxon Petererson | Flight Simulator | 11/4/26

class Obstacles {
  // member variables
  int x, y, w, h;
  color c1;
  PImage bird;

  // constructor
  Obstacles() {
    x = 750;
    y = 200; 
    w = 100; 
    h = 100;
    c1 = color(244);
    bird = loadImage("birb2.png");
  }

  // member methods
  void display() {
    image(bird, x, y, w, h);
  }
}
