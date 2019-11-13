class SpaceShip{
 float xP, yP;
 int size = 50;
 color c;
 
 SpaceShip(){
     c = color(random(0,255));
    xP = mouseX;
    yP = mouseY;
 }
 void drawShip(){
   //float d = dist(mouseX, mouseY, width,height);
   //float r = map(0,d,width,0,255);
       noStroke();
  fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255),map(mouseY, 0, height, 0, 255));
  rectMode(CENTER);
  rect(mouseX,mouseY, 60,20);
   rect(mouseX-30,mouseY-20, 40,8);
    rect(mouseX-20,mouseY-13, 8,8);
   rect(mouseX-30,mouseY+20, 40,8);
   rect(mouseX-20,mouseY+12, 8,8);
   ellipse(mouseX+45,mouseY, 20,20);
 }
 
}
