ArrayList<LineMaker> lines;

void setup() {
  size (800, 800);
  lines = new ArrayList<LineMaker>();  // Create an empty ArrayList
  lines.add(new LineMaker(width/2,height/2));
}

void draw() {
  background(255);

  for (int i =0; i< lines.size(); i++) { 
    LineMaker l = lines.get(i);
    l.makeLines();

    if (l.finished() && i == lines.size()-1) {
      println("ADD NEW LINE");
      lines.add(new LineMaker(l.endPoint.x, l.endPoint.y) );
    }
  }
}

