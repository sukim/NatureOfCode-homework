import toxi.geom.*;
import toxi.physics2d.*;
import toxi.physics2d.behaviors.*;

// Reference to physics world
VerletPhysics2D physics;

// A list of cluster objects
ArrayList clusters;

// Boolean that indicates whether we draw connections or not
boolean showPhysics = true;
boolean showParticles = true;

// Font
PFont f;
PImage backgroundImg;
PImage littlekata;
PImage kataking;

void setup() {
  size(600, 700);
  f = createFont("Georgia", 12, true);
  backgroundImg = loadImage("background.jpg");
  littlekata = loadImage("lilkata.png");
  kataking = loadImage("katamariking.png");
  // Initialize the physics
  physics=new VerletPhysics2D();
  physics.setWorldBounds(new Rect(10, 10, width-20, height-20));

  // Spawn a new random graph
  newGraph();
}

// Spawn a new random graph
void newGraph() {

  // Clear physics
  physics.clear();

  // Create new ArrayList (clears old one)
  clusters = new ArrayList();

  // Create 8 random clusters
  for (int i = 0; i < 8; i++) {
    Vec2D center = new Vec2D(width/2, height/2);
    clusters.add(new Cluster((int) random(3, 8), random(20, 100), center));
  }

  //	All clusters connect to all clusters	
  for (int i = 0; i < clusters.size(); i++) {
    for (int j = i+1; j < clusters.size(); j++) {
      Cluster ci = (Cluster) clusters.get(i);
      Cluster cj = (Cluster) clusters.get(j);
      ci.connect(cj);
    }
  }
}

void draw() {

  // Update the physics world
  physics.update();
  
  background(255);
  image(backgroundImg,width/2, height/2, 600, 700);
  image(kataking, width/2, height/2, 300, 500);
  // If we want to see the physics
  if (showPhysics) {
    for (int i = 0; i < clusters.size(); i++) {
      // Cluster internal connections
      Cluster ci = (Cluster) clusters.get(i);
      ci.showConnections();

      // Cluster connections to other clusters
      for (int j = i+1; j < clusters.size(); j++) {
        Cluster cj = (Cluster) clusters.get(j);
        ci.showConnections(cj);
      }
    }
  }
  // Display all points
  if (showParticles) {
    for (int i = 0; i < clusters.size(); i++) {
      Cluster c = (Cluster) clusters.get(i);
      c.display();
    }
  }

  // Instructions
  fill(255);
  textFont(f);
  text("'p' to display or hide particles\n'c' to display or hide connections\n'n' for new graph", 10, 20);
}

// Key press commands
void keyPressed() {
  if (key == 'c') {
    showPhysics = !showPhysics;
    if (!showPhysics) showParticles = true;
  } 
  else if (key == 'p') {
    showParticles = !showParticles;
    if (!showParticles) showPhysics = true;
  } 
  else if (key == 'n') {
    newGraph();
  }
}

