
PVector position;
float time=0;
float deltaTime=0;

float accelerationX=0;
float deltaX=0;
float dynamicX =0;
float soften_dynamicX=0;

float accelerationY=0;
float deltaY=0;
float dynamicY =0;
float soften_dynamicY=0;

void setup() {

  size(800, 600,FX2D);

  position = new PVector(width/2, height/2);
}



void draw() {

  background(0);
  
  deltaTime = abs(time - millis());
  deltaX = mouseX - pmouseX;
  accelerationX = deltaX/deltaTime;
  accelerationX = accelerationX*100;

  deltaY = mouseY - pmouseY;
  accelerationY = deltaY/deltaTime;
  accelerationY = accelerationY*100;

  if(accelerationX > 0.5){
        dynamicX = accelerationX*0.9 + dynamicX *0.1;
  }
  if(accelerationX < -0.5){
        dynamicX = accelerationX*0.9 + dynamicX *0.1;
  }
  soften_dynamicX = soften_dynamicX*0.9 + dynamicX*0.1;

  if(accelerationY > 0.5){
        dynamicY = accelerationY*0.9 + dynamicY *0.1;
  }
  if(accelerationY < -0.5){
        dynamicY = accelerationY*0.9 + dynamicY *0.1;
  }
  soften_dynamicY = soften_dynamicY*0.9 + dynamicY*0.1;

  fill(255,0,0);
  rectMode(CENTER);
  rect(position.x + soften_dynamicX,position.y + soften_dynamicY,50,50);
  text("acc x :" + accelerationX, width/2, height-50);
  text("acc y :" + accelerationY, width/2, height-25);

  time=millis();
}
