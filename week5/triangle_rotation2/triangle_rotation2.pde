float theta = 0;
float r = 100;
PImage img;
ThreeTrgs t;
MakingRows m;

void setup () {
  size(1000, 900, P3D);
  //translate(width/2,height/2);
  background(255);
  noStroke();
  img = loadImage("data/hummingbird.png");
  t = new ThreeTrgs ( r, theta, img);
  m = new MakingRows();
  for(int i= 0; i < 15; i++){
  m.makeRows(86*i, 150*i);
  }
  saveFrame("output.png");
}

