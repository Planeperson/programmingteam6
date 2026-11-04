// Osha Furness

class MMenuButton {
  // Member Variable
  boolean selectedPlay;
  boolean selectedControls;
  boolean seelctedQuit;

  int x, y, w, h;

  color c1;
  color c2;

  // Constructor
  MMenuButton() {
    x = width/2;
    y = height/2;
    w = 150;
    h = 75;
    c1 = color(15);
  }

  // Member Methods
  void display() {
    fill(c1);
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void move() {
  }
}
