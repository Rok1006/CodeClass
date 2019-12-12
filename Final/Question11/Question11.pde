int size = 50; 
float xPos = size/2, yPos; 
int xDirection = 1; 
float theta; 
float ampl; 
int orbitRadius = 100;

void setup(){
size(800, 600); 

}
void draw(){
background(0); 

theta += .05; 

//create boundaries for your xPos 


xPos += xDirection; 

//use the map function for ampl 
ampl = map(xPos,0,2000,0,width);

//fix yPos 
yPos = sin(theta)*ampl+height/2;
if(xPos >= width ){
     xDirection = -xDirection; 
   }

fill(255); 
ellipse(xPos, yPos, size, size); 
}
