PVector location;
PVector velocity;
// if press mouse, it regenerates triangle pattern

void setup() {
  size(800, 800);
  smooth();
  noLoop();
  frameRate(1);
  location = new PVector(300, 300);
  velocity = new PVector(2.5, 10);
}

void draw() {
  noFill();
  stroke(0);
  background(0
  );
  int block=20; //number of blocks per canvas, the more blocks the more dense the triangles
  int xblock=height/block;
  int yblock=width/block;
  TriangleBlock t=new TriangleBlock();
  for (int x=0; x< height; x+=xblock) {
    for (int y=0; y< width; y+=yblock) {
      PVector center = new PVector(width/2, height/2);
      location.add(velocity);

      PVector line = PVector.sub(center, location);   // Calculate direction of force

      float len = line.mag();
      println(len);

      if (len < 800) {
        velocity.mult(1);
      } 
      stroke (255);
      fill (7, 237, 170, 100);
      t.generate1(center.x, center.y);
      t.generate1(location.x, location.y);
fill (10, 7, 237, 100);
     t.generate1(x, y);
     //t.generate2(x,y);
    }
  }
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}

