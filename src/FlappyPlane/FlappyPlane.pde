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
  if (gameState == 0) {
    drawMMenu();
  } else if (gameState == 1) {
    drawPlay();
  }
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
  obs.display();      
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
