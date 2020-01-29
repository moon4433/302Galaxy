
float radius = 20;
float mag = 100;

float x;
float target;
float vel;

float timeOnLastFrame = 0;
float timeTilRando; // countdown Timer

void setup(){
  size(500,500);
  target = x = width/2;
}
void draw(){
  
  // update:
  float time = millis()/1000.0;
  float dt = time - timeOnLastFrame;
  timeOnLastFrame = time;
  
  timeTilRando -= dt;
  if(timeTilRando <= 0){
  target = random(-200, 200) + width/2;
  timeTilRando = .5;
  }
  // euler physics
  
  float force = target - x;
  force = constrain(force, -1, 1);
  float mass = 1;
  float a = force/mass;
  vel += a;
  vel = constrain(vel, -5, 5);
  x += vel;
  
  background(128);
  fill(0);
  ellipse(target, height/2 + 70, 20, 20);
  
  fill(255);
  ellipse(x, height/2, 50, 50);
  
} 
