// Osha Furness

MMenuButton Plb;
MMenuButton Crb;
MMenuButton Qub;
Player P1;
Obstacles obs1; // Declare the obstacle object

// Global variable to hold your bird image
PImage birdImg; 

MMenuButton[] buttons;
int selectedIndex = 0;

int gameState = 0;

void setup() {
  size(1500, 750);
  
  // 1. Load the image file from the data folder
  birdImg = loadImage("birb2.png"); 
  
  Plb = new MMenuButton(width/2, height/2);
  Crb = new MMenuButton(width/2, height/2 + 100);
  Qub = new MMenuButton(width/2, height/2 + 200);
  P1 = new Player();
  
  // 2. Initialize the obstacle and pass the loaded bird image to it
  obs1 = new Obstacles(birdImg); 

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
  } else if (gameState == 2) {
    drawPlay();
  } else if (gameState == 3) {
    drawCredits();
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
  
  // 3. Render the obstacle containing the bird PNG on the play screen
  obs1.display(); 
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
        gameState = 2;
      } else if (selectedIndex == 1) {
        gameState = 3;
      }
    }
  }
}

void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}
