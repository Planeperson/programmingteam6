// Osha Furness
MMenuButton Plb;
MMenuButton Cob;
MMenuButton Crb;
MMenuButton Qub;
Player P1;
PImage sharedImg;
Obstacles obs;

MMenuButton[] buttons;
int selectedIndex = 0;

int gameState = 0;

void setup() {
  size(1500, 800);
  Plb = new MMenuButton(width/2, height/2);
  Cob = new MMenuButton(width/2, height/2 + 100);
  Crb = new MMenuButton(width/2, height/2 + 200);
  Qub = new MMenuButton(width/2, height/2 + 300);
  P1 = new Player();
sharedImg = loadImage("../../images/birb2.png"); 
  obs = new Obstacles(sharedImg);

  buttons = new MMenuButton[] {
    Plb,
    Cob,
    Crb,
    Qub,
  };

  updateMSelect();
}

void draw() {
  // 1. Remove the double background clear and the floating obs.display() from here
  
  // Render based on the active state
  if (gameState == 0) {
    drawMMenu();
  } else if (gameState == 1) {
    drawPlay();
  }
}

void drawMMenu() {
  background(#D3F8FF); // Clears screen with soft blue for the menu
  Plb.display();
  Cob.display();
  Crb.display();
  Qub.display();
  
  // Note: If you want the bird visible on the main menu instead, 
  // you would put "obs.display();" right here at the bottom of this function!
}

void drawPlay() {
  background(#3A61D3); // Draws the gameplay background FIRST
  
  P1.display();        // Draws the player
  obs.display();       // FIX: Draws the obstacle bird ON TOP of the gameplay background!
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
}

void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}
