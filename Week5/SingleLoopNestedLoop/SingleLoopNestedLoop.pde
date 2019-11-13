int size = 50;
int x,y;
int gridSize = 40;
int box_Max = 300;

void setup(){
  x = width/size;
  size(1000,1000);
}

void draw(){
  background(0);
   //ThreeDGrid();
  SingleLoop();
  //ThreeDGrid();

  }


void SingleLoop(){
    for(int i=0; i<x; i++){ //a single loop a. Change the size of an ellipse based on it's position in the loop
         //float d = dist(mouseX, mouseY, i*size+size/2,height/2);
     int r = int(map(mouseX,mouseY,0,0,255));
     int b = int(map(mouseX,0,10,0,255));
     noStroke();
      fill(r,0,b);
     ellipseMode(CENTER);
    ellipse(i*size+size/2,height/2,i+size/2, i+size/2);
    ellipse(i*size+size/2,250,i+size/2, i+size/2);
    ellipse(i*size+size/2,750,i+size/2, i+size/2);
}
}
void ThreeDGrid1(){
  //stroke(255);
  translate(width/2,height/2,0);
  for (int x = -box_Max; x<=box_Max; x+=50){
    for (int y = -box_Max; y<=box_Max; y+=50){
pushMatrix();
translate(x,y,0);
box(30);
popMatrix();
      
    }
  }
    }
    
    void ThreeDGrid2(){
      
      
    }
  
