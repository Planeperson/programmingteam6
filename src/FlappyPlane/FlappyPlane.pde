// Array of buttons
MMenuButton[] buttons;
int selectedIndex = 0;
Obstacles obs;
PImage sharedImg;
void setup() {
  size(1500, 750);
  Plb = new MMenuButton(width/2, height/2);
  Cob = new MMenuButton(width/2, height/2 + 100);
  Crb = new MMenuButton(width/2, height/2 + 200);
  Qub = new MMenuButton(width/2, height/2 + 300);
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
  background(#6495ED);
  Plb.display();
  Cob.display();
  Crb.display();
  Qub.display();
 obs.display();
}

void keyPressed() {
if (key == CODED) {
    if (keyCode == DOWN) {
      selectedIndex = (selectedIndex + 1) % buttons.length;
      updateMSelect();
    } else if (keyCode == UP) {
      selectedIndex = (selectedIndex - 1 + buttons.length) % buttons.length;
      updateMSelect();
    }
  }
}

void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}
void updateMSelect() {
  for (int i = 0; i < buttons.length; i++) {
    buttons[i].selected = (i == selectedIndex);
  }
}
