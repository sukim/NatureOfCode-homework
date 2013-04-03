class ThreeTrgs {
  float r;
  float theta;
  PShape img;

  ThreeTrgs (float _r, float _theta, PShape _img) {
    r = _r;
    theta = _theta;
    img = _img;
  }

  void multiply (float x, float y, float rotate) {
    svg.pushMatrix();
    svg.translate (-600+x, -100+y);
    svg.rotate(radians(rotate));
    for (int i = 0; i < 3; i++) {
      svg.rotate(radians(120));
      svg.shape(img);
    }
    svg.popMatrix();
    pushMatrix();
     translate (-600+x, -100+y);
     rotate(radians(rotate));
     for (int i = 0; i < 3; i++) {
     rotate(radians(120));
     shape(img);
     }
     popMatrix();
  }
}

