PVector location;
PVector velocity;

void setup() {
  size (800, 800);
  location = new PVector(100, 100);
  velocity = new PVector(2.5, 5);
}
void draw() {
  background(255);
  PVector center = new PVector (width/2, height/2);
  location.add(velocity);
  
  //if the line is 10pixels long, stop right there.
  //if ((location.x > center + 10)) {
  if ((location.x > width) || (
  location.x < 0)) {
    velocity.x =location.x;
  }
  if ((location.y > height) || (location.y < 0)) {
    velocity.y = velocity.y * -1;
  }
  stroke (0);
  fill (175);
  line(center.x, center.y, location.x, location.y);
}


class PVector{
  float x;
  float y;
  float xspeed = 1;
  float yspeed = 1;
  
  PVector(float x_, float y_) {
    x = x_;
    y = y_;
  }
  
  void draw (){
    x = x+ xspeed;
    y = y+ yspeed;
    
  }
  
  void add(PVector v) {
    y = y + v.y;
    x = x + v.x;
  }
}
