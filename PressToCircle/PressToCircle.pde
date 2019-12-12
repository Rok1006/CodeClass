int pressed = 0;
float brushSize; 
boolean changeColor;

void setup(){
  size(1000, 1000); 
  background(#FFC400); 
  brushSize = 0; 
}

void draw(){
  //fill(#FFC400, 5); 
  //rect(0, 0, width, height); 
  float r = random(0, 900);
  float h = random(0, 800);
  //float c = random(#FAFFFF, #83F6FF);
  
  //fill(#FF0000);
  //  textSize(32);
  //text("ERASE THE WORDS.", 500,500);
  
  
  if(mousePressed){
    fill(0, 0, 0); 
    noStroke(); 
    ellipse(mouseX, mouseY, brushSize++, brushSize++); 
    fill(255, 255, 255); 
    if(changeColor==true){
      fill(#6FF4FF, 255, 255); 
    }
    ellipse(mouseX+5, mouseY+5, brushSize+1, brushSize+1); 
    
    if(brushSize >= 200)
    {
      brushSize = 1;
    }
    pressed+=1;
  }
  if(pressed == 0){
  fill(#FF0000);
    textSize(32);
  //text("ERASE THE WORDS.", 300,300);
  }
    if(pressed == 200){
      fill(#FF0000);
    textSize(32);
  //text("That's right.", 500,500);
  changeColor = true;
    }
     if(pressed==300){
      fill(#FF0000);
    textSize(32);
  //text("Keep Going.", 250,250);
  changeColor = false;
    }
   if(pressed > 500){
      fill(#FF0000);
    textSize(25);
  //text("oooooo.", r,h);
  fill(0);
  changeColor = true;
    }
     if(pressed > 700){
      fill(#FF0000);
    textSize(25);
    fill(0);
    //text("You thought you can erase me.", 100,850);
  //text("Really?", 100,900);
  changeColor = false;
    }

}

void keyPressed(){
  //if(key == CODED){
  //  if(keyCode == UP && brushSize <= 500){
  //    brushSize += 10; 
  //  }else if(keyCode == DOWN && brushSize >10){
  //    brushSize -= 10; 
  //  }
  //}
}
