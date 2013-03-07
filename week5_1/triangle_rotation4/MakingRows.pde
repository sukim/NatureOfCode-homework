class MakingRows {

  MakingRows () {
  }
  
  void makeRows(float addX, float addY ) {
    for (int i = 0; i < 8; i++) {
      if (i%2==0) {
        t.multiply(85*i+addX, 50+addY, 180);
      }
      else {
        t.multiply(85*i+addX, 0+addY, 0);
      }
    }
  }
}

