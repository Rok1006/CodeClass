int num = 6;
int size[] = new int [num];
String[] randomFruit = {"Melon", "Apple", "Strawberry", "BlueBerries", "Kiwi"}; //Basic 1.Create an array of strings.
int ts = 40;
float xPos[] = new float[num], yPos[] = new float[num]; //Basic 3. Create an array to store the position of multiple shapes
float xSpeed[] = new float[num], ySpeed[] = new float[num];
color colors[] = new color[num];
//int opacity[] = new int [num];
float distance;
float distanceBalls;
float distanceButton;
boolean ballMove = true;
boolean ballStop = false;

//float posX[] = {100,200,300,400,500};
//float posY[] = {100,200,300,400,500};

void setup(){
    background(0);
  size(1000,1000);
  
    for(int i = 0; i< num; i++){ //Basic 4. Assign values to your position array using a for loop
        size[i] = int(random(50,100));
       xPos[i] = random(size[i]/2, width-size[i]/2);
    yPos[i] = random(size[i]/2, height-size[i]/2);
        xSpeed[i] = random(-5,5);
    ySpeed[i] = random(-5,5);
    colors[i] = color(20, random(0,255),random(200,255));
    //opacity[i] = 255;
    }
  
}
boolean doIt = true;
void draw(){
 background(0); //comment this out to see displayed text calculated by probability //uncomment this to see bouncing ball or see concole
  //buttonOne();
  noStroke();
  distanceButton = dist(mouseX, mouseY,850,50); 
  //if(mousePressed){
  //    if(distanceButton<100){
  //      doIt = true;
  //        if(doIt){
  // DisplayText(); 
  // //doIt = false;
  //}
  //  println("Click");
  //}
  //}
  textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("What kind of fruits do you like?" , 500, 100);
  text("See Console" , 500, 200);
  if(doIt){
   DisplayText(); 
   doIt = false;
  }
  //distance = dist(mouseX, mouseY,xPos[i],yPos[i]); 
  
  
  
  
  for(int i = 0; i<num; i++){  //make ball
      distance = dist(mouseX, mouseY,xPos[i],yPos[i]); 
      
    //distanceBalls = dist(xPos[i],yPos[i],xPos[i],yPos[i]);  //distance between two ball
    float dx = xPos[i]-xPos[i];
    float dy = yPos[i]-yPos[i];
    float a = sqrt(sq(dx)+sq(dy)); 
     if (a < xPos[i]+xPos[i]) {
       //println("yehhhh");
       //xSpeed[i] = -xSpeed[i];
     }
      if (a < yPos[i]+yPos[i]) {
       //println("sssss");
       //ySpeed[i] = -ySpeed[i];
     }
    
    
    
     fill(colors[i]);
    xPos[i]+= xSpeed[i];
     yPos[i]+= ySpeed[i];
     
     if(xPos[i] <= size[i]/2 || xPos[i] >= width - size[i]/2){
       xSpeed[i] = -xSpeed[i];
     }
         if(yPos[i] <= size[i]/2 || yPos[i] >= height - size[i]/2){
       ySpeed[i] = -ySpeed[i];
     }
     
     
     
     float d = dist(mouseX, mouseY, xPos[i], yPos[i]);
     //if(d < size[i]/2){
       //ballStop = !ballStop;
       if(mousePressed){  //Challenge 2.Freeze the movement of an individual ellipse if you click on it
         if(d < size[i]/2){
           //ballStop = !ballStop;
           if(ballMove){
      xSpeed[i] = random(-5,5);
              ySpeed[i] = random(-5,5);
              ballMove = false;
 }
     if(ballStop){
   xSpeed[i] = random(0,0);
   ySpeed[i] = random(0,0);
 }
         }
         
         
         
       }
 //if(mousePressed){
 //   xSpeed[i] = random(0,0);
 //  ySpeed[i] = random(0,0);
 // }
    // }
      if(keyPressed){
 
  }
    ellipse(xPos[i],yPos[i], size[i],size[i]);
      if(distance < size[i]/2){ 
    //println("yup");
  }
 
  }
  
  
  
}
void buttonOne(){  //random
  noStroke();
     fill(#FFD603);  //map
  rect(850,50, 100, 50);
  textSize(20);
  fill(0); 
  textAlign(CENTER);
  text("Click", 900, 80);
}


void mousePressed(){
 
  //ballStop = true;
  ballStop = !ballStop; //Challenge3. toggle the movement back on if you click on the ellipse again
     if (ballStop==false) {
    ballMove=true;
  }
  
  if(distanceButton<50){
    println("Click");
  }
}

void DisplayText(){ //Basic 2. Use probability to display text from your string array
  float me_P = 0.10;
  float ap_P = 0.80;
  float st_P = 0.90;
  float bl_P = 0.70;
  float ki_P = 0.50;
  float num = random(0,1); 
  println(num);
  //for (int i = 0; i<6; i++){
    //randomFruit[i] = random(0,7);
      if(num< 0.09){
        println("I like nothing.");
      textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like nothing.", 500, 150);
    }
    if(num> me_P){
      println(randomFruit[0]);
      textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like  " + randomFruit[0]+ "."  , 500, 200);
    }
      if(num> ap_P){
      println(randomFruit[1]);
       textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like " + randomFruit[1] + "."  , 500, 300);
    }
      if(num> st_P){
      println(randomFruit[2]);
       textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like " + randomFruit[2] + "." , 500, 400);
    }
      if(num> bl_P){
      println(randomFruit[3]);
       textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like " + randomFruit[3] + "." , 500, 500);
    }
      if(num>ki_P){
      println(randomFruit[4]);
       textSize(ts);
      fill(255);
  textAlign(CENTER);
  text("I like " + randomFruit[4] + "." , 500, 600);
    }
  //}
  //textSize(50);
  //textAlign(CENTER);
  //text("I like eating" , 500, 500);
}
