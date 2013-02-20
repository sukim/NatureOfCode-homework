ArrayList<LineMaker> lines;


void setup() {
  size (800, 800);
  lines = new ArrayList<LineMaker>();  // Create an empty ArrayList
  lines.add(new LineMaker(width/2, height/2));
}

void draw() {
  background(255);

  for (int i =0; i< lines.size(); i++) { 
    LineMaker l = lines.get(i);
    l.makeLines();
   
   
    if (l.length() > 300 && i == lines.size()-1) {
    
      lines.add(new LineMaker(endPoint, endPoint) );
     
      
    }
  }
}

