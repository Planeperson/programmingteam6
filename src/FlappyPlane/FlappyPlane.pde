// Osha Furness
MMenuButton Pb;
MMenuButton Cb;

void setup() {
 size(1500, 750);
 Pb = new MMenuButton(width/2, height/2);
 Cb = new MMenuButton(width/2, height/2 + 100);

}

void draw() {
 background(#FFFFFF);
 Pb.display();
 Cb.display();
}

void keyPressed() {}
