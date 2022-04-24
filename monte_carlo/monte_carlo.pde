float r = 200; // Global radius

int total_num = 0; // Total number of dots
int circle_num = 0; // Number of dots in the circle

void setup() {
  size(510, 510); // Window with size 510, 510
  
  background(0); // Black background
  
  translate(width/2, height/2); // Place the objects in the middle of the display window
  
  stroke(255);
  strokeWeight(4);
  noFill();
  ellipse(0, 0, r*2, r*2); // Ellipse with radius 200
  rectMode(CENTER);
  rect(0, 0, r*2, r*2); // Rectangle with radius 200
}

void draw() { // Draw() is a loop, that runs over and over 
  translate(width/2, height/2);
  
  float pi = 0;
  
  // Create 100 points at a time
  for (int i = 0; i< 100; i++) {
    float x = random(-r, r);
    float y = random(-r, r);
    
    total_num++; // Increas the total-points-counter by one
    
    float d = sqrt(x*x + y*y); // How far from the center is the current point
    
    // Check, if the point is inside the circle or outside
    if (d < r) {
      circle_num++; // Increase the counter, if the point is inside the circle
      stroke(100, 255, 0);
    }
    else {
      stroke(0, 100, 255);
    }
    
    pi = 4 * (float(circle_num) / total_num);
    point(x, y); // Draw the random point at x,y  
  }
  println(pi);
}
