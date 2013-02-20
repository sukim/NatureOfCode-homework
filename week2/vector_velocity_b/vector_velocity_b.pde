LineMaker l;

void setup() {
  size (800, 800);
  l = new LineMaker();
}

void draw() {
  background(255);
  l.makeLines();
}
