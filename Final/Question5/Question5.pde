int sceneNumber = 0; 

void setup(){
size(600, 600); 

}

void draw(){
  println(sceneNumber);
switch(sceneNumber){
    case 0 :
    scene0();
    break;
    case 1 :
    scene1();
    break;
    case 2 :
    scene2();
    break;
    case 3:
    scene3();
    break;
    
  }
//write a switch for your scenes

if(sceneNumber < 0){
sceneNumber = 3; 
}

if(sceneNumber > 3){
sceneNumber = 0; 
}

fill(255); 
text("the scene number is: " + str(sceneNumber), 100, 100); 


}
void keyPressed(){
  if(keyCode == RIGHT){
    sceneNumber+=1;
    
  }
   if(keyCode == LEFT){
    sceneNumber-=1;
    
  }
  
  
}
//use the void keyPressed functions to increase the scene number with the 
//right key and decrease the screen number with the left key 
void scene0(){
background(255, 0, 255); 
}

void scene1(){
background(0, 0, 255); 
}

void scene2(){
background(0, 255, 255); 
}

void scene3(){
background(255, 0, 0); 
}
