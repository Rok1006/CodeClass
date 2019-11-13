class Enemy{
  float xPos, yPos;
   PImage bigShip; 
 PImage smallShip; 
   float xoff = 0.7; //bigship
float xincrement = 0.02; 
   float joff = 0.10; //smallship1
float jincrement = 0.05; 
   float koff = 0.50; //smallship2
float kincrement = 0.1; 
//////////attack
  //float x0P;
  // float x1P;
  //float x2P;
  //int attackIn;
  // float watervelocity; 
  
  Enemy(){
      bigShip = loadImage("BigShip.png"); 
       smallShip = loadImage("SmallShip.png"); 
    
    xPos = width/2;
    yPos = 70;
    
    //attackIn = 0;
 
  }
  
  void BigShip(){
      float n = noise(xoff)*width;
      //float n = random(0,width);
      xoff += xincrement;
     image(bigShip, n, yPos, 400,250 );
    //n =x0P;
  }
  
  void leftSmallShip(){
     float n = noise(joff)*width;
      joff += jincrement;
     //image(smallShip, 375, yPos, 190,100 );
     image(smallShip, n, yPos, 190,100 );
     //n =x1P;
  }
  
   void rightSmallShip(){
      float n = noise(koff)*width;
      koff += kincrement;
     image(smallShip, n, yPos, 190,100 );
     //n =x2P;
  }
  
  //void waterdropAttack(){
  //  stroke(#03F4FF);
  //  fill(#03F4FF,0);
  //  rectMode(CENTER);
  //  rect(x0P,500,5,50);
  //  //attackIn = 1;
  //}
  //void waterdropshot(){
    
    
  //}
//  void bullet(){
//        //stroke(#03F4FF);
//    fill(255);
//    ellipseMode(CENTER);
//    ellipse(500,500,15,25);
//    attackIn = 2;
//  }
//  void splash(){
//     fill(#C508FA);
//    //stroke(255);
////    beginShape();
////vertex(30, 30);
////vertex(50, 40);
////vertex(85, 50);
////vertex(20, 20);
////endShape();
//triangle(40, 75, 58, 110, 76, 75);
//    attackIn = 3;
//  }
}
