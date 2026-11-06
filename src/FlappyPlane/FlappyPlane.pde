// Osha Furness
MMenuButton Plb;
MMenuButton Cob;
MMenuButton Crb;
MMenuButton Qub;

// Array of buttons
MMenuButton[] buttons;
int selectedIndex = 0;

void setup() {
  size(1500, 750);
  Plb = new MMenuButton(width/2, height/2);
  Cob = new MMenuButton(width/2, height/2 + 100);
  Crb = new MMenuButton(width/2, height/2 + 200);
  Qub = new MMenuButton(width/2, height/2 + 300);
  
  buttons = new MMenuButton[] {
    Plb, 
    Cob, 
    Crb, 
    Qub,
  };
  
  updateMSelect();
}

void draw() {
  background(#D3F8FF);
  Plb.display();
  Cob.display();
  Crb.display();
  Qub.display();
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
