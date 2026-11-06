// Osha Furness

class MMenuButton {
  // Member Variable
  boolean selected;

  int x, y, w, h;

  color c1;
  color c2;

  // Constructor
  MMenuButton(int x, int y) {
    this.x = x;
    this.y = y;
    w = 300;
    h = 75;
    c1 = color(175);
    c2 = color(50);
    selected = false;
  }

  // Member Methods
  
  void display() {
    if (selected) {
    fill(c2);
  } else {
    fill(c1);
    }
    rectMode(CENTER);
    rect(x, y, w, h);
  }

  void move() {
  }
}
