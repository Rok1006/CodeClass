//mousePress the pattern to see more, mouse the pressed mouse to see more


int size = 40;
int rows;
int cols;
float distanceInCheck;
int xPos =500,yPos =500;
int cirSize = 10;

void setup(){
  size(1000,1000);
  //size = width/10;
  rows = height/size;
  cols = width/size;
}
 float yup = 0;
void draw(){
  
  background(0);
   distanceInCheck = dist(mouseX, mouseY,500,500);
   Checker();
        
}

void Checker(){  //Required 3,4 && Challenge1
  for(int i=0; i<cols; i++){
      for(int j=0; j<rows; j++){
           float d = dist(mouseX, mouseY, i*size+size/2,j*size+size/2);
            float s = map(d,0,width,5,size);
            float r = map(0,d,width,144,255);
         //noStroke();
         if((i+j)%2==0){
           fill(#FFCD00);
         }else{
           fill(r);
         }
         
         rectMode(CENTER);
        rect(i*size+size/2,j*size+size/2,s++, s++);
        //distanceInCheck = dist(mouseX, mouseY,i,j);
      }
   }
   if(mousePressed){
     DrawThing();
     RotatingCircle();
   }
  
}
void DrawCircle(){
  noStroke();
  fill(0);
  ellipseMode(CENTER);
  ellipse(xPos,yPos,cirSize++,cirSize++);
  
}
void DrawThing(){
  yup++;
  background(0);
  //fill(#FFCD00);
  stroke(#FFCD00);
  strokeWeight(2);
     noFill();
  //rotate(radians(-theta));
   pushMatrix();
   translate(width/2, height/2);
  for(int i=0; i<100; i++){
      //pushMatrix();
 float d = dist(mouseX, mouseY, 100,100);
            float s = map(d,0,width,i,i*10);
   //translate(width/2, height/2);
     rotate(radians(-yup));
    ellipse(0+i,2,s,s);
     //rect(0,0,i*5,i*5);
     //popMatrix();
  }
  popMatrix();
}

void RotatingCircle(){
  float d = dist(mouseX, mouseY, 100,100);
            float s = map(d,0,width,10,100);
  pushMatrix();
  fill(#FFC800);
  translate(width/2, height/2);
   rotate(radians(yup++));
    ellipse(250,250,s,s);
  popMatrix();
}


void mousePressed(){
  println("Random");
  DrawCircle();
  DrawThing();
  
  //Checker();
  //if(distanceInCheck < size/2){
  //  println("Random");
  //}
}
