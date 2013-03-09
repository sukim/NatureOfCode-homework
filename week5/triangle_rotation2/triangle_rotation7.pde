float theta = 0;
float r = 100;
PImage img;
ThreeTrgs t;
MakingRows m;

void setup () {
  size(600, 600, P3D);
  background(255);
  img = loadImage("data/hummingbird.png");
  t = new ThreeTrgs ( r, theta, img);
  m = new MakingRows();
  for(int i= 0; i < 10; i++){
  m.makeRows(86*i, 150*i);
  }
}

