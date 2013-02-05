class Walker {
  int x,y,z;
  float brownHue = z;
  
  Walker() {
    x = 0;
    y = height/2;
    z = 0;
  }


  void render() {
    noFill();
    stroke(brownHue, 100, 50);
    println(brownHue);
    strokeWeight(1);
    ellipse(width/2, height/2, x, y);
  }
  
  void step() {
    float r = random(1);
    if (r < 0.4){
      x+= 5;
      z++;
    //check bouncing ball to make the color go back from red to random
    } else if (r < 0.9) {
      y+= 5;
    } else {
      y--;
    }
    if (z >= 48) {
      z = z * -1;
    }
    brownHue = constrain (z, 0, 48);
    x= constrain(x,0, width-1);
    y= constrain(y,0,height-1); 
    x *= noise(frameCount)*3;
    y *= noise(frameCount)*3;
    //look into bezier curves
    }
 }
