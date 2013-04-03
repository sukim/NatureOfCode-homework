import org.philhosoft.p8g.svg.*;
import controlP5.*;
import processing.opengl.*;
import unlekker.util.*;
import unlekker.modelbuilder.*;
import unlekker.modelbuilder.filter.*;
import ec.util.*;
import svgimport.*;
import processing.dxf.*;

int count = 0;
int max = 1;

float theta = 0;
float r = 100;
PShape img;
ThreeTrgs t;
MakingRows m;
boolean record;
UNav3D nav;
P8gGraphicsSVG svg;

boolean recording = false;

void setup () {
  size(1000, 900);
  background(255);
  noStroke();
  img = loadShape("vectorcircle.svg");
  println("Use s to save the current frame,\nr to save the current frame in a numbered file.\nUse q to end the sketch.");
}

void draw () {
  if (recording) {
    println("Starting to record");
    svg = (P8gGraphicsSVG) createGraphics(width, height, P8gGraphicsSVG.SVG, "vector_rotation.svg");
    beginRecord(svg);
    svg.clear(); // Discard previous frame
    svg.beginDraw(); // And record this one

    if (count < max) {
      t = new ThreeTrgs ( r, theta, img);
      m = new MakingRows();
      for (int i= 0; i < 15; i++) {
        m.makeRows(86*i, 150*i);
      }
    }
    count++;

    println("Finished recording");
    svg.endRecord();
    recording = false;
  }
}
void keyPressed() {
  if (key == 's') // Save the current image (and overwrite the previous one)
  {
    recording = true;
    println("Saved.");
  }
  else if (key == 'r') // Record the current image to a new numbered file
  {
    svg.recordFrame("vector_rotation-###.svg");
    println("Saved #" + svg.savedFrameCount);
  }
  else if (key == 'q')
  {
    // Don't overwrite the last saved frame
    svg.clear();
    exit();
  }
}

