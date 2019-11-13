class AlienQ{
   float xPos, yPos;
 int size;
 float xSpeed, ySpeed;
 color c;
 float xoff = 0.30; //speed
float xincrement = 0.003; //jitter
  
  AlienQ(){
        xPos = width/2;
        yPos = 850;
    
    
  }
  
  void AlienM(){
    float n = noise(xoff)*width;
      xoff += xincrement;
      
      strokeWeight(3);
  stroke(#00FFDB);
 fill(0);
 //  ellipse(xPos+20,yPos+40, 30,30);
 //arc(xPos, yPos, 60, 60, 0, PI+QUARTER_PI, 180);
 // ellipse(xPos,yPos, 30,30);
 // ellipse(xPos+45,yPos, 30,30);
 // ellipse(xPos+45,yPos, 20,20);
 // ellipse(xPos+45,yPos, 10,10);
 // ellipse(xPos-13,yPos-30, 10,10);
   ellipse(n+20,yPos+30, 30,30);
 arc(n, yPos, 60, 60, 0, PI+QUARTER_PI, 180);
  ellipse(n,yPos, 30,30);
  ellipse(n+45,yPos, 30,30);
  ellipse(n+45,yPos, 20,20);
  ellipse(n+45,yPos, 10,10);
  ellipse(n-13,yPos-30, 10,10);
    
    
  }
}
