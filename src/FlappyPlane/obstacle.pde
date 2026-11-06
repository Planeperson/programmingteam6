// Jaxon Petererson | Flight Simulator | 11/4/26

class Obstacles { // Note: It is best practice to capitalize class names
  // member variables
  int x, y, w, h;
  color c1;
  PImage bird;

  // constructor
  Obstacles() {
    x = 50;
    y = 50;
    w = 50;
    h = 50;
    c1 = color(244);
    bird = loadImage("birb2.png"); // Fixed: Added quotation marks
  }

  // member methods
  void display() {
    image(bird, x, y, w, h); // Fixed: Uncommented and added width/height scaling
    
    // Optional: Remove or keep the rect depending on if you want a background box behind the bird
    // fill(c1);
    // rect(x,y,w,h); 
  }
}
