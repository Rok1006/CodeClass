class Player{
 float xP, yP;
 int size;
 float xSpeed, ySpeed;
 color c;
PImage[] player = new PImage [3]; 
int numFrames = 3;  // The number of frames in the animation
int currentFrame = 0;
 /////weapons
 PImage sword; 
 PImage shield; 
 PImage umbrella; 
 PImage[] weapons = new PImage [3]; 
 
 
 Player(){  //setup
    xP = width/2;
    yP = 780;
    size = 25;
    xSpeed = 0;
    ySpeed = 0;
     frameRate(13);
     smooth();
     for(int i = 0; i<player.length; i++){
       player[i] = loadImage("P"+i+".png");
     }
   
    //sword = loadImage("sword.png"); 
    //shield = loadImage("shield.png"); 
    //umbrella = loadImage("umbrella.png"); 
    weapons[0] = loadImage("sword.png");
    weapons[1] = loadImage("shield.png");
    weapons[2] = loadImage("umbrella.png");
 }
 
 void drawPlayer(){
     currentFrame = (currentFrame+1) % numFrames;  
    int offset = 0;// Use % to cycle through frames
  image(player[(currentFrame+offset) % numFrames], xP,yP,95, 110);
   
 }
 
 void playerMove(){
      xP += xSpeed*3;
   yP += ySpeed;
   
    if(keyPressed){
       if(keyCode == LEFT){
     xSpeed = -21;
     }
       if(keyCode == RIGHT){
     xSpeed = 21;
     }
   }else{
     xSpeed = 0;
     ySpeed = 0;
     
   }
 }
 void sword(){
  // image(sword, xP+19, yP-50, 145,50 );
   image(weapons[0], xP+19, yP-55, 145,50 );
 //image(weapons[0],0,0);
 fill(255,0);
 noStroke();
 rectMode(CENTER);
 rect(xP+19,yP-62,150,20);
 }
 void shield(){
   //image(shield, xP-7, yP-70, 130,50 );
   image(weapons[1], xP-5, yP-65, 150,50 );
    fill(255,0);
 noStroke();
 rectMode(CENTER);
 rect(xP-5,yP-75,150,20);
 }
 void umbrella(){
   //image(umbrella, xP-40, yP-80, 147,85 );
   image(weapons[2], xP-25, yP-75, 155,90 );
    fill(255,0);
 noStroke();
 rectMode(CENTER);
 rect(xP-25,yP-100,150,20);
 }
 
}
