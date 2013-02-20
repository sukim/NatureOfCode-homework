PShape gradient;
PImage katamari;
PShape whitesoftball;
Oscillator[] oscillators = new Oscillator[30];
Mover mover;

void setup() {
  size(640, 480);
  smooth();
  //background(0);
  gradient = loadShape("background.svg");
  whitesoftball = loadShape("whitesoftball.svg");
  katamari = loadImage("katemari.png");
  mover = new Mover();
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i] = new Oscillator();
  }
}

void draw() {
  shape(gradient, 0, 0, 640, 480);
  image(katamari, 270, 300);
  mover.update();
  mover.checkEdges();
  mover.display();
  for (int i = 0; i < oscillators.length; i++) {
    oscillators[i].oscillate();
    oscillators[i].display();
  }
}

