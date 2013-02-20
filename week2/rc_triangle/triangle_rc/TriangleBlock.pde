class TriangleBlock {
  int max_triangles=10; //number of triangles per block
  PVector location;
  PVector acceleration;
  PVector velocity;
  float m;
  float prevX, prevY;
  float G = .0005;
  float c = .01;

  TriangleBlock(float x_, float y_, float m_) {

    acceleration = new PVector(0, 0);
    velocity = new PVector(0, 0);
    location = new PVector(x_, y_);
    m = m_;
    prevX = x_;
    prevY = y_;
  }

  void generate(int xo, int yo) {
    for (int i=0; i<max_triangles; i++) {
      int rng=int(random(0, 50)); //random range per triangle leg
      int x1=int(random(xo-rng, xo+rng));
      int y1=int(random(yo-rng, yo+rng));
      int x2=int(random(x1-rng, x1+rng));
      int y2=int(random(y1-rng, y1+rng));
      int x3=int(random(x2-rng, x2+rng));
      int y3=int(random(y2-rng, y2+rng));
      triangle(x1, y1, x2, y2, x3, y3);
      println("xo: "+xo+" x1:"+x1+" y1:"+y1+" x2:"+x2+" y2:"+y2+" x3:"+x3+" y3:"+y3);
    }
  }



  PVector attract(Particle jam) {
    PVector f = PVector.sub(location, jam.location);
    float distance = f.mag();
    distance = constrain(distance, 5.0, 15.0);
    float gravity = (G*jam.m*m)/(distance*distance);
    f.normalize();
    f.mult(gravity);
    return f;
  }
  boolean contains(Particle m) {
    PVector l = m.location;
    if (dist(location.x, location.y, l.x, l.y)<12) {
      return true;
    }  
    else {
      return false;
    }
  }

  PVector drag(Particle m) {
    float speed = m.velocity.mag();
    float dragmag = c*speed*speed;

    PVector dragForce = m.velocity.get();
    dragForce.mult(-1);

    dragForce.normalize();
    dragForce.mult(dragmag);
    return dragForce;
  }
  void addForce(PVector f) {
    PVector force = PVector.div(f, m);
    acceleration.add(force);
  }

  void update() {

    velocity.add(acceleration);
    location.add(velocity);
    acceleration.mult(0);
  }

  void display() {
    stroke(50, 240, 175, 100);
    //fill(0,100);
    line(location.x, location.y, prevX, prevY); 
    prevX = location.x;
    prevY = location.y;
  }
}

