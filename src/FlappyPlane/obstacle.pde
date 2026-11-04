// Jaxon Petererson | Flight Simulator | 11/4/26

class obstacles {
// member variables
int x,y,w,h;
color c1;
PImage bird;

// constructer
obstacles() {
x = 50;
y = 50;
w = 50;
h = 50;
c1 = color(244);
bird = loadImage("birdplane.jpeg");
}
// member methods
void display() {
//todo: add image
//image(bird,x,y)
fill(c1);
rect(x,y,w,h);
}
}
