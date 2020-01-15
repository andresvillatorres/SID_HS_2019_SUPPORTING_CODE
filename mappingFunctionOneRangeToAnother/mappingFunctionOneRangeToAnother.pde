
void setup(){

size(400,400);

}
void draw(){
background(0);
    
  //float OldRange = (OldMax - OldMin) ; 
  //float NewRange = (NewMax - NewMin)  ;
  //float NewValue = (((OldValue - OldMin) * NewRange) / OldRange) + NewMin;
  
  float actualValue = mouseX;
  float OldRange = (width - 0 ); 
  float NewRange = (1  - (-1))  ;
  float NewValue = (((actualValue - (0)) * NewRange) / OldRange) + (-1);
  fill(255);
  text(NewValue,100,100);
}
