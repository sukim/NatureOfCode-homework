import blobDetection.*;

BlobDetection theBlobDetection;
PImage img;

// ==================================================
// setup()
// ==================================================
void setup()
{
  // Works with Processing 1.5
  // img = createGraphics(640, 480,P2D);

  size(600, 600);
  img = loadImage("silhouette.jpg");
  theBlobDetection = new BlobDetection(img.width, img.height);
  theBlobDetection.setPosDiscrimination(false);
  theBlobDetection.setThreshold(0.38f);
  theBlobDetection.computeBlobs(img.pixels);
}

// ==================================================
// draw()
// ==================================================
void draw()
{
  image(img, 0, 0, width, height);
  drawBlobsAndEdges(true, true);
}

// ==================================================
// drawBlobsAndEdges()
// ==================================================
void drawBlobsAndEdges(boolean drawBlobs, boolean drawEdges)
{
  noFill();
  Blob b =theBlobDetection.getBlob(0);
  EdgeVertex eA, eB;

  strokeWeight(2);
  stroke(0, 255, 0);
  for (int m=0;m<b.getEdgeNb();m+=20)
  {
    eA = b.getEdgeVertexA(m);
    eB = b.getEdgeVertexB(m);
    line(eA.x*width, eA.y*height, eB.x*width, eB.y*height);
    fill(0,255,0);
    ellipse(eA.x*width, eA.y*height,4,4);
  }
}

