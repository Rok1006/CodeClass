class Alien{
  PImage[] alien = new PImage [3]; 
     float xPos, yPos;
 int size;
 float xSpeed, ySpeed;
 float xoff = 0.2; //speed , alien can increase speed after a few hit because scared
float xincrement = 0.02; //jitter


int numFrames = 3;  // The number of frames in the animation
int currentFrame = 0;
  
   Alien(){   //setup
    smooth();
     for(int i = 0; i<alien.length; i++){
       alien[i] = loadImage("Alien"+i+".png");
     }
     //alien[0] = loadImage("Alien1.png");
     //alien[1] = loadImage("Alien2.png");
     //alien[2] = loadImage("Alien3.png");
      xPos = width/2;
        yPos = 820;
        frameRate(10);
   }
   
   void drawAlien(){  //draw
image(alien[0], xPos,yPos,80, 95);


  }
  void alienMove(){
            float n = noise(xoff)*width;
      xoff += xincrement;
      //float n = random(0,width);
    //image(alien[frameCount], 200,200 );
       //background(0);
  currentFrame = (currentFrame+1) % numFrames;  
    int offset = 0;// Use % to cycle through frames
  image(alien[(currentFrame+offset) % numFrames], n,yPos,80, 95);
  //rectMode(CENTER);
  //fill(#05E4FF);
  //rect(n, yPos, 80,95);
  fill(255,0);
  noStroke();
ellipseMode(CENTER);
ellipse(n,790,60,60);
     
   }
}
