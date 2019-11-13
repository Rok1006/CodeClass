int x = 0;
int y = 0;
float xPos = 500, yPos = 500;
float xSpeed, ySpeed;
int size = 50;
int r,g,b;
float distance;
float distanceRect1;
float distanceRect2;
float distanceRect3;
float rW, rH;
float rX, rY;
boolean InsideCircle;
boolean bounceOn = true;
boolean bounceOff = false;
boolean constrictOn = false;
boolean constrictOff = true;
boolean changeColor = false;
boolean noColor = true;

void setup(){
  size(1000,1000);
  //xSpeed = random(100,80);
  //ySpeed = random(-100,80);
  rW = 800;
  rH =800;
  rX=width/2;
   rY=height/2;
 //  bounceOn = true;
 //   if(bounceOn){
 //     xSpeed = random(-5,5);
 //             ySpeed = random(-2,2);
 //}
 //    if(!bounceOn){
 //  xSpeed = random(0,0);
 //  ySpeed = random(0,0);
 //}
}

void draw(){
  
  background(0);

  drawRectrangle();
  buttonOne();
  buttonTwo();
   buttonThree();
   distanceRect1 = dist(mouseX, mouseY,250,50);    //button1
       distanceRect2 = dist(mouseX, mouseY,500,50);    //button1
         distanceRect3 = dist(mouseX, mouseY,750,50);    //button1
  
  if(calDis1() < 400){
     rectMode(CENTER);
fill(random(0, 255), random(0, 255), random(0, 255));
  rect(rX, rY, rW, rH);
    
  }

  println(x);
  //float x = random(0,1000);
  //float y = random(0,1000);

  xPos += xSpeed;
   yPos += ySpeed;

   
   distance = dist(mouseX, mouseY, xPos, yPos);
   noStroke();
   fill(#03FFF0);  //map
       fill(map(xPos, 0, width, 10, 255), 10, map(xPos, 0, width, 255, 255));         //Challenge 2
  ellipse(xPos,yPos, size, size);
   println(distance);   //calculate distance between shape and mouse,Num1
  
 if(distance<50){   //Turn a boolean from false to true if your mouse is within the boundaries of your shape, Num2
   println("InsideCircle");
   InsideCircle =true;
 }
else{
  InsideCircle =false;
}
    if(InsideCircle){
  textAlign(CENTER);
  textSize(100);
  fill(0);
  text("!!!!", 500, 500);
  }else{
      textAlign(CENTER);
  textSize(30);
  fill(map(mouseX, 0, width, 255, 255), map(mouseY, 0, height, 255, 255));
  text("Touch", 500, 500);
  }
  

  //if(constrictOn==true){
  if(xPos> rX+rW/2.15 || xPos< rX-rW/2.15 ){ 
    xSpeed = -xSpeed;
     rectMode(CENTER);
fill(random(0, 255), random(0, 255), random(0, 255));
  rect(rX, rY, rW, rH);

  }
    if(yPos> rY+rH/2.15 || yPos< rY-rH/2.15 ){ 
    ySpeed = -ySpeed;
       rectMode(CENTER);
fill(random(0, 255), random(0, 255), random(0, 255));
  rect(rX, rY, rW, rH);
  }                   //Constrict the movement of a shape within an area of your canvas, Num3
  
  //if(constrictOff==false){
  //    if(xPos> width-size/2 || xPos< size/2 ){ //if circle go further than right side, reset)
  //  xSpeed = -xSpeed;
  //}
  //  if(yPos> height-size/2 || yPos< size/2 ){ //if circle go further than right side, reset)
  //  ySpeed = -ySpeed;
  //}
  //}

  

    if(bounceOn){
      xSpeed = random(-10,10);
              ySpeed = random(-5,5);
              bounceOn = false;
 }
     if(bounceOff){
   xSpeed = random(0,0);
   ySpeed = random(0,0);
 }
  //if(!mousePressed){
  //        xSpeed = random(0,0);
  //ySpeed = random(0,0);

  //}
  //float xx = random(rX, rY);
  //if(changeColor){
  //       rectMode(CENTER);
  //  fill(random(0, 255), random(0, 255), random(0, 255));
  //rect(rX, rY, rW, rH);
  //}
  //  if(noColor){
  //       rectMode(CENTER);
  //   fill(#FFC903);
  //rect(rX, rY, rW, rH);
  //}
  
  
    
}
//////////////
float calDis1() {  //Calculate the distance between your mouse and a shape; print this value to the console, Num1
  float distance1=dist(mouseX, mouseY, 500, 500);
  return distance1;
}

void drawRectrangle(){
  noStroke();
 rectMode(CENTER);
    fill(#FFC903);
  rect(rX, rY, rW, rH);
}
void buttonOne(){  //random
  noStroke();
     fill(#FFD603);  //map
  rect(250,50, 100, size);
  textSize(20);
  fill(0); 
  textAlign(CENTER);
  text("Random", 250, 55);
}
  void buttonTwo(){  //bounce
  noStroke();
     fill(#FFD603);  //map
  rect(500,50, 100, size);
  textSize(20);
  fill(0); 
  textAlign(CENTER);
  text("Bounce", 500, 55);
}
    void buttonThree(){  //constrict
  noStroke();
     fill(#FFD603);  //map
  rect(750,50, 100, size);
  textSize(20);
  fill(0); 
  textAlign(CENTER);
  text("Direction", 750, 55);
}
  
  
  
void mousePressed(){   //on the ball
  if(distance < size/2){
     noColor = !noColor;
  //   rectMode(CENTER);
  //  fill(random(0, 255), random(0, 255), random(0, 255));
  //rect(rX, rY, rW, rH);
  //    xSpeed = random(-5,5);
  //ySpeed = random(-2,2);
   }
     if(distanceRect1 < size/2){   //Create a button that moves a shape to a new random position on the canvas, Num4
       println("Random");
      ellipse(xPos=random(rX-rW/2.15, rX+rW/2.15), yPos=random(rY-rH/2.15, rY+rH/2.15), size, size );
       
     }
       if(distanceRect2 < size/2){   //Create a toggle switch that turns a bouncing ball on and off, Challenge1
       println("Bounce");
       bounceOff = !bounceOff;
             //xSpeed = random(-5,5);
             // ySpeed = random(-2,2);
     }
        if(distanceRect3 < size/2){   //button3 hit
       println("Direction");
       //rectMode(CENTER);
  //  fill(random(0, 255), random(0, 255), random(0, 255));
  //rect(rX++, rY++, rW, rH);
         //constrictOff = !constrictOff;
     }
    if (bounceOff==false) {
    bounceOn=true;
  }
    if (noColor==false) {
    changeColor=true;
  }
  //   if (constrictOff==false) {
  //  constrictOn=true;
  //}

   
}
