Walker w;

void setup () {
  size(800, 8
  00);
  w = new Walker();
  colorMode(HSB, 360, 100, 200, 100);
  background(0, 40, 25);
  frameRate(30);
}

void draw() {
  w.step();
  w.render();
}
