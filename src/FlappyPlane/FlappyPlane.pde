// Osha Furness
MMenuButton Plb;
MMenuButton Crb;
MMenuButton Qub;
Player P1;


Obstacles[] birds;
int numBirds = 5;

MMenuButton[] buttons;
int selectedIndex = 0;
int gameState = 0;
PImage birdImg;

void setup() {
  size(1500, 750);
  birdImg = loadImage("birb3.png");

  Plb = new MMenuButton(width/2, height/2);
  Crb = new MMenuButton(width/2, height/2 + 100);
  Qub = new MMenuButton(width/2, height/2 + 200);
  P1 = new Player();


  birds = new Obstacles[numBirds];
  for (int i = 0; i < birds.length; i++) {
    birds[i] = new Obstacles(birdImg);
  }

  buttons = new MMenuButton[] {
    Plb,
    Crb,
    Qub,
  };
  updateMSelect();
}

void draw() {
  background(#D3F8FF);

  if (gameState == 0) {
    drawMMenu();
  } else if (gameState == 2) {
    drawPlay();
  } else if (gameState == 3) {
    drawCredits();
  }

  if (gameState == 2) {
    P1.update();
    for (int i = 0; i < birds.length; i++) {
      birds[i].update();

      if (P1.x + P1.w > birds[i].x &&
        P1.x < birds[i].x + birds[i].w &&
        P1.y + P1.h > birds[i].y &&
        P1.y < birds[i].y + birds[i].h) {

        gameState = 0;
        resetGame();
        break;
      }
    }
  }
}

void resetGame() {
  P1.x = 100;
  P1.y = height / 2;
  P1.isUp = false;
  P1.isDown = false;
  P1.isLeft = false;
  P1.isRight = false;

  for (int i = 0; i < birds.length; i++) {
    birds[i].resetObstacle();
  }
}

void drawMMenu() {
  background(#D3F8FF);
  Plb.display();
  Crb.display();
  Qub.display();
}

void drawPlay() {
  background(#3A61D3);
  P1.display();
  for (int i = 0; i < birds.length; i++) {
    birds[i].display();
  }
}

void drawCredits () {
  background(#3AD399);
  fill(0);
  textAlign(CENTER);
  textSize(200);
  text("Credits", width/2, height/4);
}

void keyPressed() {
  if (key == ESC) {
    key = 0;
    gameState = 0;
    return;
  }

  if (gameState == 0) {
    if ((key == CODED && keyCode == DOWN) || key == 's' || key == 'S') {
      selectedIndex = (selectedIndex + 1) % buttons.length;
      updateMSelect();
    } else if ((key == CODED && keyCode == UP) || key == 'w' || key == 'W') {
      selectedIndex = (selectedIndex - 1 + buttons.length) % buttons.length;
      updateMSelect();
    }
    if (keyCode == ENTER || key == ' ') {
      if (selectedIndex == 0) {
        gameState = 2;
      } else if (selectedIndex == 1) {
        gameState = 3;
      } else if (selectedIndex == 2) {
        exit();
      }
    }
  }
  if (gameState == 2) {
    setPlayerKey(true);
  }
}

void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}

void keyReleased() {
  if (gameState == 2) {
    setPlayerKey(false);
  }
}

void setPlayerKey(boolean pressed) {
  if (key == CODED) {
    P1.setMove(keyCode, pressed);
  } else {
    P1.setMove(key, pressed);
  }
}
