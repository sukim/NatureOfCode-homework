class Node extends VerletParticle2D {
  Oscillator[] oscillators = new Oscillator[5];
  
  Node(Vec2D pos) {
    super(pos);
    for (int i = 0; i < oscillators.length; i++) {
      oscillators[i] = new Oscillator();
    }
  }

  // All we're doing really is adding a display() function to a VerletParticle
  void display() {
    stroke(91,25,206);
    strokeWeight(2);
    imageMode(CENTER);
    image(littlekata, x, y, 45,45);
    for (int i = 0; i < oscillators.length; i++) {
      oscillators[i].setCenter(x,y);
      oscillators[i].oscillate();
      oscillators[i].display();
    }
  }
}

