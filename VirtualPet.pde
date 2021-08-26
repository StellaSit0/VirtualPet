void setup(){
  size(500,500);
}

void draw(){
  //left ear
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
  ellipse(190,150,50,50);
  fill(225,225,225);
  ellipse(195,150,10,10);
  //right eye
  fill(0,0,0);
  ellipse(310,150,50,50);
  fill(225,225,225);
  ellipse(305,150,10,10);
  //nose
  fill(0,0,0);
  ellipse(250,200,50,20);
  //left arm
  fill(0,0,0);
  ellipse(130,390,100,200);
  //right arm
  fill(0,0,0);
  ellipse(370,390,100,200);
}
