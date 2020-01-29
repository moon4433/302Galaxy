// Animate 3 electrons orbiting around a nucleus.
// Each electron should follow a path and match
// colors with its respective path.
// To mathematically determine the position of
// the electrons, look at the example electron.
// Notice that before we translate it (add 200
// to x and 200 to y), it is orbiting the origin.
// Its position is a vector, so we can easily get
// its magnitude and angle from the origin.
// Once we have the angle, it should be obvious
// that we need to modify the angle then
// recalculate x and y from angle and magnitude.
// Finally, you would translate it 200, 200.
// Do all of this with trigonometry and Vectors.


void setup(){
  size(400, 400);
}
void draw(){
  background(0);
  drawAtomBG();
  ///////////////// START YOUR CODE HERE:
 
 float time = millis()/1000.0;
 
 noStroke();
 fill(255);
 
 /// red
 PVector a = new PVector();
 a.x = 150 * cos(time) + width/2;
 a.y = 50 * sin(time) + height/2;
 ellipse(a.x, a.y, 20, 20);
 
 /// blue
 PVector b = new PVector();
 b.x = 150 * cos(time);
 b.y = 50 * sin(time);
 //convert to polar
 float magB = sqrt(b.x * b.x + b.y * b.y); /// pthag!!
 float radB = atan2(b.y, b.x) + radians(60); // angle
 // convert to cart:
 b.x = magB * cos(radB) + width/2;
 b.y = magB * sin(radB) + height/2;
 ellipse(b.x, b.y, 20, 20);
 
 ///green
 PVector c = new PVector();
 c.x = 150 * cos(time);
 c.y = 50 * sin(time);
 //convert to polar
 float magC = sqrt(c.x * c.x + c.y * c.y); /// pthag!!
 float radC = atan2(c.y, c.x) - radians(60); // angle
 // convert to cart:
 b.x = magC * cos(radC) + width/2;
 b.y = magC * sin(radC) + height/2;
 ellipse(b.x, b.y, 20, 20);
 
  ///////////////// END YOUR CODE HERE
  
}
void drawAtomBG(){
  noStroke();
  fill(255);
  ellipse(200,200,50,50);
  noFill();
  strokeWeight(5);
  
  pushMatrix();
  translate(200,200);
  stroke(255,100,100);
  ellipse(0,0,300,100);
  popMatrix();
  
  pushMatrix();
  translate(200,200);
  rotate(PI/1.5);
  stroke(100,255,100);
  ellipse(0,0,300,100);
  popMatrix();
  
  pushMatrix();
  translate(200,200);
  rotate(2*PI/1.5);
  stroke(100,100,255);
  ellipse(0,0,300,100);
  popMatrix();
}
