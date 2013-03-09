float theta = 0;
float r = 100;

ThreeTrgs t = new ThreeTrgs ( r, theta);
MakingRows m = new MakingRows ();

void setup () {

  size(600, 600);
  background(255);
    for(int i= 0; i < 10; i++){
  m.makeRows(86*i, 150*i);
  }
}

