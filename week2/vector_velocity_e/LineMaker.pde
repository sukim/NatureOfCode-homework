class LineMaker {
  PVector endPoint;
  PVector velocity;
  PVector startPoint;
  PVector angle;

  LineMaker (float x, float y) {
    angle = new PVector();
    endPoint = new PVector(x, y);
    velocity = PVector.random2D();
    startPoint = new PVector (x, y);
  }

  void makeLines() {
    endPoint.add(velocity);


    stroke (0);
    fill (175);
    line(startPoint.x, startPoint.y, endPoint.x, endPoint.y);
    
  }

  boolean finished() {
    PVector line = PVector.sub(startPoint, endPoint);   // Calculate direction of force
    float len = line.mag();
    if (len > 100) {
      velocity.mult(0);
      return true;
    }
    return false;
  }

}

