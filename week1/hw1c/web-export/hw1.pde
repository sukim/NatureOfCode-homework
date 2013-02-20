Walker w;

void setup () {
  size(400, 400);
  w = new Walker();
  background(255);
}

void draw() {
  w.step();
  w.render();
}
class Walker {
  int x,y;
  
  Walker() {
    x = width/2;
    y = height/2;
  }
}

  void render() {
    stroke(0);
    strokeWeight(2);
    point(x,y);
  }
  
  void step(){
    float r = random(1);
    if (r < 0.4){
      x++;
    } else if (r < 0.9) {
      y++;
    } else {
      y--;
    }
    x= contrain(x,0, width-1);
    y= contrain(y,0,height-1);  
  }

