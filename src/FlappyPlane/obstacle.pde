// Jaxon Petererson | Flight Simulator | 11/4/26
class Obstacles {
  int x, y, w, h;
  color c1;
  PImage birdImg;
 

  // Make sure "PImage img" is exactly here
  Obstacles(PImage img) {
    x = 750;
    y = 200; 
    w = 100; 
    h = 100;
    c1 = color(244);
    birdImg = img; 
    sharedImg = loadImage("../../images/birb2.png"); 
  }

  void display() {
    image(birdImg, x, y, w, h);
  }
}
