class Walker {
  float d;
  float brownHue;
  Walker() {
  d = width/2;
  }

  void render() {
    noFill();
    stroke(brownHue, 80, 93);
    strokeWeight(1);
    ellipse(width/2, height/2, d, d);
  }

  void step() {
    d += random(-100, 100);
    brownHue = random(0, 48);
    d = constrain(d, 0, width);
  }
}

