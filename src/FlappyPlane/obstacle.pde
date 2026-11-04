// Jaxon Petererson | Flight Simulator | 11/4/26

class obstacles {
// member variables
int x,y,w,h;
color cl;
PImage bird;

// constructer
Obstacles() {
x = 50;
y = 50;
w = 50;
h = 50;
cl = color(244,55,77);
bird = loadImage("");
}
// member methods
void display() {
//todo: add image
//image(bird,x,y)
fill(c);
rect(x,y,w,h);
}
}
