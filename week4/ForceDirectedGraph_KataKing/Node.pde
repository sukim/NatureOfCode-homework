class Node extends VerletParticle2D {

  Node(Vec2D pos) {
    super(pos);
  }

  // All we're doing really is adding a display() function to a VerletParticle
  void display() {
    stroke(91,25,206);
    strokeWeight(2);
    imageMode(CENTER);
    image(littlekata, x, y, 40, 40);
  }
}

