import cc.arduino.*;
import org.firmata.*;
import processing.serial.*;
Arduino arduino;

public void setup() {
  size(500, 500);
  background(225);
  arduino = new Arduino(this, Arduino.list()[0], 57600); //change the [0] to a [1] or [2] etc. if your program doesn't work
}
void draw(){
  int y = arduino.analogRead(5);
  System.out.println(y);
  //left ear
  background(225);
  fill(0,0,0); 
  ellipse(160,110,100,100);
  // right ear
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
  fill(0,0,0);
  //line(130,500,400,200);
  ellipse(130,390,100,200);
  //right arm
  fill(0,0,0);
  //line(370,390,100,200);
  ellipse(370,390,100,200);
  //smile
  noFill();
  arc(250, 2*y, 100, 60, 0, HALF_PI);
  //arc(250, 250, 100, 60, HALF_PI, PI);
  //arc(250, 250, 70, 70, PI, PI+QUARTER_PI);
  //arc(250, 250, 100, 80, PI+QUARTER_PI, TWO_PI);
  /*
  if(y>150){
    background(52, 235, 70);
  }
  if(y<35){
    background(52, 235, 70);
  }
  */
}
