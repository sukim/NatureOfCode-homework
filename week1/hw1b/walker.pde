class Walker {
  float x;
  int y,z;
  float brownHue = z;
  float t = 0;
  
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
    } else if (r < 0.9) {
      y+= 5;
    } else {
      y--;
    }
    
   //like a bouncing bal, to make the color go back from red to random
    if (z >= 48) {
      z = z * -1;
    }
    else {
    z++;
    }
    
    brownHue = constrain (z, 0, 48);
    x= constrain(x,0, width-1);
    y= constrain(y,0,height-1); 
    t = t + 0.01;
    x *= noise(t);
    y *= noise(t)*2;
    x = map(x, 0, 1, 0, width);
    //y *= noise(frameCount)*3;
    //look into bezier curves
    }
 }
