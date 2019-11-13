Enemy jellyfish;
Enemy[] jellyfishes;
boolean start;
boolean difficult;
SpaceShip ship;
boolean textshow;


void setup(){
  size(1000,1000);
 
  jellyfishes = new Enemy[10];
  for(int i=0; i<10; i++){
    jellyfishes[i] = new Enemy();
  }
   ship = new SpaceShip();
  start = false;
  difficult = false;
  textshow = true;

}
void draw(){
  background(0);
  //noStroke();
  //fill(255);
  //ellipseMode(CENTER);
  //ellipse(500,500, 50,50);
  //rect(510,515, 60,8);
  // rect(510,477, 60,8);
  //    rect(508,496, 60,7);
  //       noStroke();
  ////fill(255);
  ////rectMode(CENTER);
  ////rect(500,500, 60,20);
  //// rect(470,480, 40,8);
  ////  rect(480,487, 8,8);
  //// rect(470,520, 40,8);
  //// rect(480,512, 8,8);
  //// ellipse(545,500, 20,20);
if(textshow){
  textSize(100);
    fill(#03FFFD);
   textAlign(CENTER);
  text("CRASH", 490, 500);
  textSize(20);
  fill(255);
   textAlign(CENTER);
  text("Press Space to Start.", 500, 700);
   text("SHIFT to increase difficulty.", 500, 750);
}else{
      textSize(20);
  fill(0);
   textAlign(CENTER);
  text("Press Space to Start.", 500, 700);
   text("SHIFT to increase difficulty.", 500, 750);
}
  if(keyPressed){
    if(start){
    println("Start");
textshow = false;
  }
  }
  if(start){
    for(int i =0; i< 10; i++){
      int r = (int)random(1,10);
      
    jellyfishes[i].drawEnemy();
      jellyfishes[i].move();
      
      if(difficult){
      jellyfishes[r].noiceMove();
      }
  }
  }
    ship.drawShip();
  }
  //when player press certain button the moveing of enemy start

void keyPressed(){
  if(keyCode == ' '){ //pressed space
    start = true;
    //ship.drawShip();
  }
   if(keyCode == SHIFT){ //pressed shift
    difficult = true;
  }
  }
  
