// Enda Tong
class Player {
  // member variables
  int x, y, w, h;
  color c1;
  PImage p1;

  // Key tracking flags
  boolean isUp, isDown, isLeft, isRight;

  // Constructor
  Player() {
    x = 100;
    y = height / 2;
    w = 50;
    h = 50;
    c1 = color(111);
    p1 = loadImage("123.png");
  }

  // Member Methods
  void display() {
    image(p1, x, y);
  }

  // Call this every frame in draw() for smooth movement
  void update() {
    int speed = 5;
    if (isUp)    y -= speed;
    if (isDown)  y += speed;
    if (isLeft)  x -= speed;
    if (isRight) x += speed;
  }

  // Handle key state changes
  void setMove(int k, boolean b) {
    if (k == UP || k == 'w' || k == 'W')    isUp = b;
    if (k == DOWN || k == 's' || k == 'S')  isDown = b;
    if (k == LEFT || k == 'a' || k == 'A')  isLeft = b;
    if (k == RIGHT || k == 'd' || k == 'D') isRight = b;
  }
}
