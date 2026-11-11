// Jaxon Petererson | Flight Simulator | 11/4/26
class Obstacles {
  float x, y, w, h;
  float speed;
  color c1;
  PImage birdImg;

  Obstacles(PImage img) {
    birdImg = img; 
    c1 = color(244);
    resetObstacle();
  }
  void update() {
    x -= speed;
    if (x + w < 0) {
      resetObstacle();
    }
  }
  void display() {
    image(birdImg, x, y, w, h);
  }
  void resetObstacle() {
    float randomSize = random(75, 225); 
    w = randomSize;
    h = randomSize;
    x = width; 
    y = random(0, height - h); 
    speed = random(4, 8); 
  }
}
