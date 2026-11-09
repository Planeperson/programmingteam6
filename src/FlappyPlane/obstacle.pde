// Jaxon Petererson | Flight Simulator | 11/4/26
class Obstacles {
  int x, y, w, h;
  color c1;
  PImage birdImg;

  Obstacles(PImage img) {
    w = 200; 
    h = 200;
    x = 500;  
    y = 200;  
    
    c1 = color(244);
    birdImg = img; 
  }

  void display() {
    image(birdImg, x, y, w, h);
  }
}
