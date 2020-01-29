
float radius = 20;

void setup(){
  size(500,500);
}
void draw(){
  
  // update:
  float time = millis()/1000.0;
  //radius = sin(time) * 100 + 200;
  
  float mag = random(100, 200.0);
  
  float x = mag * cos(time) + width/2;
  float y = mag * sin(time) + height/2;
  
  
  // draw:
  
  //background(128);
  ellipse(x, y, radius * 2, radius * 2);
} 
