// Osha Furness

MMenuButton Plb;
MMenuButton Crb;
MMenuButton Qub;
Player P1;

MMenuButton[] buttons;
int selectedIndex = 0;

int gameState = 0;

void setup() {
  size(1500, 750);
  Plb = new MMenuButton(width/2, height/2);
  Crb = new MMenuButton(width/2, height/2 + 100);
  Qub = new MMenuButton(width/2, height/2 + 200);
  P1 = new Player();

  buttons = new MMenuButton[] {
    Plb,
    Crb,
    Qub,
  };

  updateMSelect();
}

void draw() {
  background(#D3F8FF);
  
  // Render based on the active state
  if (gameState == 0) {
    drawMMenu();
  } else if (gameState == 1) {
    drawPlay();
  }
  P1.update();
}

void drawMMenu() {
  background(#D3F8FF);
  Plb.display();
  Cob.display();
  Crb.display();
  Qub.display();
}

void drawPlay() {
  background(#3A61D3);
  P1.display();
}

void keyPressed() {
  if (gameState == 0) {
    if (key == CODED) {
      if (keyCode == DOWN) {
        selectedIndex = (selectedIndex + 1) % buttons.length;
        updateMSelect();
      } else if (keyCode == UP) {
        selectedIndex = (selectedIndex - 1 + buttons.length) % buttons.length;
        updateMSelect();
      }
    }
    if (keyCode == ENTER || key == ' ') {
      if (selectedIndex == 0) {
        gameState = 1;
      }
    }
  }
  setPlayerKey(true);
}

void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}
void keyReleased() {
  setPlayerKey(false);
}

void setPlayerKey(boolean pressed) {
  if (key == CODED) {
    P1.setMove(keyCode, pressed);
  } else {
    P1.setMove(key, pressed);
  }
}
