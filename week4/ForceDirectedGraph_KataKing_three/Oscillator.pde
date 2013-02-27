class Oscillator {   

  PVector angle;
  PVector velocity;
  PVector amplitude;

  PVector location;
  PImage img;

  Oscillator() {   
    img = loadImage("katatoast.png");
    angle = new PVector();
    velocity = new PVector(random(-0.03, 0.03), random(-0.03, 0.03));
    amplitude = new PVector(random(15, 0), random(15, 0));
    location = new PVector(width/2, height/2);
  }   

  void oscillate() {
    angle.add(velocity);
  }   

  void setCenter(float x, float y) {
    location.x = x;
    location.y = y;
  }

  void display() {   

    float x = sin(angle.x)*amplitude.x;
    float y = sin(angle.y)*amplitude.y;
    pushMatrix();
    translate(location.x, location.y-15);
    imageMode(CENTER);
    image(img,x,y,10,10);
    popMatrix();
  }
}   

