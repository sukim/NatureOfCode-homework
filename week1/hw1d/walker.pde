class Walker {
  int x,y;
  float brownHue;
  
  Walker() {
    x = width/2;
    y = height/2;
  }


  void render() {
    println("render time:"+frameCount+" x:"+x+" y:"+y+" bh:"+brownHue);
    noFill();
    stroke(brownHue, 80, 93);
    strokeWeight(1);
//    ellipse(width/2, height/2, x, y);
    bezier( x
    
    , y, x*3, y, x*3, y, x, y*3);
  }
  
  void step() {
    float vx = random(-2, 2);
    float vy = random(-2, 2);
    x += vx;
    y += vy;
        
    brownHue = random(0,48);
    println("\n\nstep1 time:"+frameCount+" x:"+x+" y:"+y+" bh:"+brownHue);
    x= constrain(x,0, width-1);
    y= constrain(y,0,height-1); 
    float nx=noise(frameCount)*3;
    float ny=noise(frameCount)*3;
    println("step2 time:"+frameCount+" x:"+x+" nx:"+nx+" y:"+y+" ny:"+ny+" bh:"+brownHue);
    x *= nx;
    y *= ny;

    println("step3 time:"+frameCount+" x:"+x+" y:"+y+" bh:"+brownHue);

    }
 }
