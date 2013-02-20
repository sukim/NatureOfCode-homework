
// if press mouse, it regenerates triangle pattern
import processing.opengl.*;
import javax.media.opengl.*;
TriangleBlock[] jammers = new TriangleBlock[256];

void setup() {
  size(800, 800);
  smooth();
  noLoop();
  frameRate(1);
  int index2=0;

  for (int i=0;i<width;i+=50) {
    for (int j=0;j<height;j+=50) {
      jammers[index2] = new TriangleBlock(i, j, 100);
      index2++;
    }
  }
}

void draw() {
  noFill();
  background(63, 250, 23);
  strokeWeight(2);
  stroke(0);
  int block=10; //number of blocks per canva, the more blocks the more dense the triangles
  int xblock=height/block;
  int yblock=width/block;
  TriangleBlock t = new TriangleBlock();
  for (int x=0; x< height; x+=xblock) {
    for (int y=0; y< width; y+=yblock) {
      t.generate(x, y);
    }
  }
  for (int i=0;i<jammers.length;i++) {
    for (int j=0;j<jammers.length;j++) {
      if (i!=j) {
        PVector gravity = jammers[j].attract(jammers[i]);
        jammers[i].addForce(gravity);

        if (jammers[j].contains(jammers[i])) {
          PVector dragForce = jammers[j].drag(jammers[i]);
          jammers[i].addForce(dragForce);
        }
      }
    }
    for (int j=0;j<locations.length;j++) {

      PVector gravity = locations[j].attract(jammers[i]);
      jammers[i].addForce(gravity);
    }
    jammers[i].update();
    jammers[i].display();
  }
}

void mousePressed() {
  noLoop();
}

void mouseReleased() {
  loop();
}

