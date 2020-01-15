import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class moveOnAccelerationExample extends PApplet {


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

public void setup() {

  

  position = new PVector(width/2, height/2);
}



public void draw() {

  background(0);
  
  deltaTime = abs(time - millis());
  deltaX = mouseX - pmouseX;
  accelerationX = deltaX/deltaTime;
  accelerationX = accelerationX*100;

  deltaY = mouseY - pmouseY;
  accelerationY = deltaY/deltaTime;
  accelerationY = accelerationY*100;

  if(accelerationX > 0.5f){
        dynamicX = accelerationX*0.9f + dynamicX *0.1f;
  }
  if(accelerationX < -0.5f){
        dynamicX = accelerationX*0.9f + dynamicX *0.1f;
  }
  soften_dynamicX = soften_dynamicX*0.9f + dynamicX*0.1f;

  if(accelerationY > 0.5f){
        dynamicY = accelerationY*0.9f + dynamicY *0.1f;
  }
  if(accelerationY < -0.5f){
        dynamicY = accelerationY*0.9f + dynamicY *0.1f;
  }
  soften_dynamicY = soften_dynamicY*0.9f + dynamicY*0.1f;

  fill(255,0,0);
  rectMode(CENTER);
  rect(position.x + soften_dynamicX,position.y + soften_dynamicY,50,50);
  text("acc x :" + accelerationX, width/2, height-50);
  text("acc y :" + accelerationY, width/2, height-25);

  time=millis();
}
  public void settings() {  size(800, 600,FX2D); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "--present", "--window-color=#666666", "--stop-color=#cccccc", "moveOnAccelerationExample" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
