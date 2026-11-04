// Osha Furness

class MMenuButtons {
  // Member Variable
  boolean selectedPlay;
  boolean selectedControls;
  boolean seelctedQuit;

  int x,y,w,h;

  color c1;
  color c2;

  // Constructor
  MMenuButtons() {
   x = 100;
   y = 100;
   w = 150;
   h = 75;
   c1 = color(15);
  }

  // Member Methods
  void display() {
   rect(x,y,w,h,c1);

  }

  void move() {}
}
