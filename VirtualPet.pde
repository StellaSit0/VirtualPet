import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
Arduino arduino;
int leftButton=0;
int rightButton=0;
float ang = 4;
float r;
float ex,ey;

public void setup() {
  size(500, 500);
  background(225);
  ex= 140;
  ey= 0;
  arduino = new Arduino(this, Arduino.list()[1], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw(){
  int y = arduino.analogRead(5);
  leftButton=arduino.analogRead(1);
  rightButton=arduino.analogRead(6);
  System.out.println(y);
  background(225);
  fill(255,164,46);
  pushMatrix();
    translate(width/4,height+60);
    rotate(ang);
    ang+=0.005;
    if(ang>5.5) ang = 2.0;
    println(ang);
    ellipse(height,0,75,75);
  popMatrix();
  //left ear
  fill(0,0,0); 
  ellipse(160,110,100,100);
  //right ear
  fill(0,0,0);
  ellipse(330,110,100,100);
  //body
  fill(225,225,225);
  ellipse(250,400,300,400);
  //face
  fill(225,225,225);
  ellipse(250,200,250,250);
  //left eye
  fill(0,0,0);
  ellipse(190,150,50,60);
  fill(225,225,225);
  ellipse(195,145,10,10);
  //right eye
  fill(0,0,0);
  ellipse(310,150,50,60);
  fill(225,225,225);
  ellipse(305,145,10,10);
  //nose
  fill(0,0,0);
  ellipse(250,200,50,20);
  //left arm
  if(rightButton<=500){
    fill(0,0,0);
    ellipse(130,390,100,200);
  } else{
    fill(0,0,0);
    ellipse(130,390,200,300);
  }
  if(leftButton<=500){
    fill(0,0,0);
    ellipse(130,390,100,200);
    ellipse(370,390,100,200);
  } else{
    //angleMode(DEGREES);
    pushMatrix();
     translate(width/4.25, height/3);
     rotate(radians(r));
     ellipse(0,100,100,200);
    popMatrix();
    r+=1;
  }
  noFill();
  arc(250, 2*y, 100, 60, 0, HALF_PI);
  //mean eyebrows
  if(rightButton>=500){
    line(250,125,200,100);
    line(250,125,300,100);
  }
  //nice eyebrows
  if (leftButton>=500){
    noFill();
    arc(220, 140, 190, 60, PI+1, PI+HALF_PI);
    noFill();
    arc(330, 140, 190, 60, PI+1, PI+HALF_PI);
  }
  //left foot
  fill(0);
  ellipse(190,610,100,150);
  //right foot
  fill(0);
  ellipse(310,610,100,150);
  
  for(int i = 0; i < 16; i++)
    System.out.print(i+" "+arduino.analogRead(i) + "\t");
    System.out.println();
}
