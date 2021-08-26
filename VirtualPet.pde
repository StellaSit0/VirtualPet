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
  //right eye
  fill(0,0,0);
  ellipse(300,150,50,50);
  //left arm
  fill(0,0,0);
  ellipse(125,375,100,200);
  //rotate(200);
  //right arm
  
  triangle(250,200,5,5);
  
}
