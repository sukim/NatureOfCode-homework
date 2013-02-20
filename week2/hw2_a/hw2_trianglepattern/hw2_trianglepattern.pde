ArrayList triangle1 = new ArrayList();

void setup() {
  size(800, 800);
  smooth();
}

void draw() {
  background(0);
  for (int i = 0; i < triangle1.size(); i++) {
    PVector triangle = new PVector(((Triangle)triangle1.get(i)).x1, ((Triangle)triangle1.get(i)).y1);
    for (int j = 0; j < triangle1.size(); j++) {
      PVector triangle1 = new PVector(width/2, height/2);
      triangle1.add(new Triangle(x1, y1));
    }
  }
}

