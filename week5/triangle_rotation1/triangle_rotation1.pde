int symbolSize = 50;
PImage img;

void setup()
{
  size(1280, 800, P2D);
  background(255);
  noStroke();
  img = loadImage("data/texture.png");

  translate(symbolSize, symbolSize);

  for (int x = 0; x < symbolSize*1; x += symbolSize)
  {
    for (int y = 0; y < symbolSize*10; y += symbolSize)
    {
      drawTile(x, y);
    }
  }
}

void drawTile(int x, int y)
{
  pushMatrix();
  translate(x, y);
  println("X:"+x+" y:"+y);
  for (int i = 0; i < 4; i++)
  {
    println("i:"+i);
    fill(random(255), random(200, 255));
    triangle(0, 0, 0, symbolSize, symbolSize, symbolSize);
    fill(random(255), random(200, 255));
    triangle(0, 0, symbolSize, 0, symbolSize, symbolSize);
    rotate(radians(90));
  }
  popMatrix();
}

