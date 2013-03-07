class ThreeTrgs {
  float r=0;
  float theta = 120;

  ThreeTrgs (float _r, float _theta) {
    r = _r;
    theta = _theta;
  }

  void multiply (float x, float y, float rotate) {
    pushMatrix();
    translate (-50+x,-50+y);
    rotate(radians(rotate));
    for (int i = 0; i < 6; i++) {
      rotate(radians(120));
      fill(random(255),random(200,255));
      triangle(r*cos(radians(210)), r*sin(radians(210)), r*cos(radians(-30)), r*sin(radians(-30)), 0, 0);
    }
    popMatrix();
  }
}

