class LineMaker {
  PVector endPoint;
  PVector velocity;
  PVector startPoint;
 
  LineMaker (int x, int y) {
    endPoint = new PVector(x, y);
    velocity = new PVector(2.5, 5);
    startPoint = new PVector (x, y);
  }

  void makeLines() {
    endPoint.add(velocity);

    PVector line = PVector.sub(startPoint, endPoint);   // Calculate direction of force

    float len = line.mag();
    if (len > 300) {
      velocity.mult(0);
    } 
    stroke (0);
    fill (175);
    line(startPoint.x, startPoint.y, endPoint.x, endPoint.y);
    println(endPoint.x + ""  + endPoint.y);  
  }

   float length() {
     PVector line = PVector.sub(startPoint, endPoint);   // Calculate direction of force
     return line.mag();
   }
}


