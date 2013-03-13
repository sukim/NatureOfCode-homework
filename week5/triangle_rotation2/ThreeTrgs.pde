class ThreeTrgs {
  float r;
  float theta;
  PImage img;

  ThreeTrgs (float _r, float _theta, PImage _img) {
    r = _r;
    theta = _theta;
    img = _img;
  }

  void multiply (float x, float y, float rotate) {
    pushMatrix();
    translate (-600+x, -100+y);
    rotate(radians(rotate));
    for (int i = 0; i < 3; i++) {
      rotate(radians(120));
      //noFill();
      //stroke(0);
      
      beginShape();
      texture(img);
      vertex(r*cos(radians(210)), r*sin(radians(210)), 0, 80, 0);
      vertex(r*cos(radians(-30)), r*sin(radians(-30)), 0, 80, 80);
      vertex(0, 0, 0,0, 80);
      endShape(CLOSE);

//      noStroke();
//      fill(255, 0, 0);
//      ellipse(r*cos(radians(210)), r*sin(radians(210)), 8, 8);
//      fill(0, 255, 0);
//      ellipse(r*cos(radians(-30)), r*sin(radians(-30)), 8, 8);
//      fill(0, 0, 255);
//      ellipse(0, 0, 8, 8);
    }
    popMatrix();
  }
}

