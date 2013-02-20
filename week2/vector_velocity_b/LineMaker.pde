class LineMaker {
  PVector location;
  PVector velocity;

  LineMaker () {
    location = new PVector(100, 100);
    velocity = new PVector(2.5, 5);
  }

  void makeLines() {
    background(255);
    PVector center = new PVector(width/2, height/2);
    location.add(velocity);

    PVector line = PVector.sub(center, location);   // Calculate direction of force

    float len = line.mag();
    println(len);

    if (len < 300) {
      velocity.mult(0);
    } 
    stroke (0);
    fill (175);
    line(center.x, center.y, location.x, location.y);
  }
}

