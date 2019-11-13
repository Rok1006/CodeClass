class Attacks{
    float x0P;  //bigshippos
   float x,y; //water
 //float x2,y2;  //bullet
 // float x3,y3;   //splash
  int attackIn;
   float velocity; 
      float xoff = 0.7; //bigship
float xincrement = 0.02; 
int number;
   
  Attacks(float x, float y, float velocity){  //setup
     this.x = x;
      this.y = y;
      this.velocity = velocity;
      // float n = noise(xoff)*width;
      //xoff += xincrement;
    attackIn = 0;
    //n =x0P;
  }   
  void bigShipPos(){    //should be excuted constantly
     float n = noise(xoff)*width;
      xoff += xincrement;
      n =x0P;
  }
    void waterdropAttack(){  //display
         pushMatrix(); 
      translate(x, y); 
    //stroke(#03F4FF);
    fill(#03F4FF);
    rectMode(CENTER);
    rect(x0P,70,5,34);
       popMatrix();
    attackIn = 1;
  }
  void update(){  //movement
    y+=velocity;
    
  }
    void bullet(){
     pushMatrix(); 
      translate(x, y); 
    fill(255);
    ellipseMode(CENTER);
    ellipse(x0P,70,17,17);
     popMatrix();
    attackIn = 2;
  }
  void splash(){
    pushMatrix(); 
      translate(x, y); 
     fill(#C508FA);
    // rectMode(CENTER);
    //rect(x0P,70,10,10);
triangle(50, 75, 58, 90, 66, 75);
 popMatrix();
    attackIn = 3;
  }
  
  //void Random(){
  //  float r = random(1,3);
  //  r = number;
  //  println(number);
  //  if(number == 1){
  //    bigShipPos();
  //    update();
  //    waterdropAttack();
  //  }
  //   if(number == 2){
  //     bigShipPos();
  //     update();
  //     bullet();
  //   }
  //   if(number == 3){
  //     bigShipPos();
  //     update();
  //     splash();
  //   }
  //}
  
  
}
