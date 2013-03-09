class ThreeTrgs {
  float r=0;
  float theta = 120;
  PImage img;

  ThreeTrgs (float _r, float _theta, PImage _img) {
    r = _r;
    theta = _theta;
    img = _img;
  }

  void multiply (float x, float y, float rotate) {
    pushMatrix();
    translate (-50+x,-50+y);
    rotate(radians(rotate));
    for (int i = 0; i < 6; i++) {
      rotate(radians(120));
      beginShape();
      texture(img);
      vertex(r*cos(radians(210)), r*sin(radians(210)), 0, 0, 0);
      vertex(r*cos(radians(-30)), r*sin(radians(-30)), 0, 300, 120);
      vertex(0, 0, 0, 200, 400);
      endShape();
    }
    popMatrix();
  }
}

