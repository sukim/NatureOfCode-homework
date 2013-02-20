class TriangleBlock {
  int max_triangles=5; //number of triangles per block
  
  void generate1(int xo, int yo){
    for (int i=0; i<max_triangles; i++){
      int rng=int(random(0,10)); //random range per triangle leg
      int x1=int(random(xo-rng, xo+rng));
      int y1=int(random(yo-rng, yo+rng));
      int x2=int(random(x1-rng, x1+rng));
      int y2=int(random(y1-rng, y1+rng));
      int x3=int(random(x2-rng, x2+rng));
      int y3=int(random(y2-rng, y2+rng));
      triangle(x1, y1, x2, y2, x3, y3);
      println("xo: "+xo+" x1:"+x1+" y1:"+y1+" x2:"+x2+" y2:"+y2+" x3:"+x3+" y3:"+y3);
    }
  }
  
  void generate2(int xo, int yo){
    for (int i=0; i<max_triangles; i++){
      int rng=int(random(0,10)); //random range per triangle leg
      int x1=int(random(xo-rng, xo+rng));
      int y1=int(random(yo-rng, yo+rng));
      rng=int(random(0,30)); //random range per triangle leg
      int x2=int(random(x1-rng, x1+rng));
      int y2=int(random(y1-rng, y1+rng));
      rng=int(random(0,50)); //random range per triangle leg
      int x3=int(random(x2-rng, x2+rng));
      int y3=int(random(y2-rng, y2+rng));
      triangle(x1, y1, x2, y2, x3, y3);
      println("xo: "+xo+" x1:"+x1+" y1:"+y1+" x2:"+x2+" y2:"+y2+" x3:"+x3+" y3:"+y3);
    }
  }
}
