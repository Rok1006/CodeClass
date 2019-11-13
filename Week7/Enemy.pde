class Enemy{
  color c;
  float xPos, yPos;
  float xSpeed;
  float sSpeed;
  int timer = 0;
  int s;
  
  Enemy(){
    c = color(random(200,255));
    xPos = random(0,width);
    yPos = random(0,height);
    xSpeed = random(1,4);
    sSpeed = random(0.5,1);
  }
  
  void drawEnemy(){
      noStroke();
  fill(c);
  ellipseMode(CENTER);
  ellipse(xPos,yPos, 50,50);
  rectMode(CENTER);
  rect(xPos+30,yPos+20, 60,8);
   rect(xPos+30,yPos-20, 60,8);
      rect(xPos+28,yPos-1, 60,7);
  }
  void move(){
    xPos = xPos - xSpeed;
    if(xPos < 0){ //>1000
      xPos = 1005;
    }
  }
  void noiceMove(){
    timer +=1;
    if(timer == 1){
      s+=1;
      xPos = xPos - sSpeed;
      yPos = yPos +s;
      //timer = 0;
    }
       if(timer == 2){
      s+=1;
      xPos = xPos - sSpeed;
      yPos = yPos -s;
      timer = 0;
    }
    
    //move ina fuctuated way
    
      if(yPos > 1000){ //>1000
      yPos = 0;
    }
  }
}
