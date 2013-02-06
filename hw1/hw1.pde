Walker w;

void setup () {
  
  size(800, 800);
  
  w = new Walker();
  colorMode(HSB, 360, 100, 200, 100);
  background(31, 9, 78);
}

void draw() {
  w.step();
  w.render();
}
