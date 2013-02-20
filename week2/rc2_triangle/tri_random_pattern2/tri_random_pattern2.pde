
// if press mouse, it regenerates triangle pattern

void setup() {
  size(800, 800);
  smooth();
  noLoop();
  frameRate(1);
}

void draw() {
  noFill();
  stroke(255);
  background(0);
  int block=10; //number of blocks per canva, the more blocks the more dense the triangles
  int xblock=height/block;
  int yblock=width/block;
  TriangleBlock t=new TriangleBlock();
  for (int x=0; x< height; x+=xblock){
    for (int y=0; y< width; y+=yblock){
      t.generate1(x,y);
      t.generate2(x,y);
    }
  }
}

void mousePressed(){
  noLoop(); 
}

void mouseReleased(){
  loop(); 
}

void test() {
  background(0);
  int max_triag=100;
  int origin=0;
  int rng=int(random(0,50));
  for (int i=0; i<max_triag; i++){
    origin=int(random(0, 800));
    rng=int(random(0,50));
    int x1=origin;
    int y1=int(random(origin-rng, origin+rng));
    int x2=int(random(origin-rng, origin+rng));
    int y2=int(random(x2-rng, x2+rng));
    int x3=int(random(origin-rng, origin+rng));
    int y3=int(random(x3-rng, x3+rng));
    triangle(x1, y1, x2, y2, x3, y3);
  }
}

