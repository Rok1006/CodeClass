String Here;
int xC1, yC1;
int size = 10;
int r, g, b;
float summ;

void setup()
{
  noStroke();
  size(1000,1000);
  background(0);
xC1 = 500;
yC1 = 500;



}

void draw() 
{

circle1();

summ= sum(mouseX, mouseY);
if(summ>10){
  textAlign(CENTER);
  textSize(30);
  fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255));
  text("YES", 500, 500);
}

  for(int i =0;i<50;i++){  //drawing square
        float r = random(10, 500);
  stroke(#00ECFF);
  strokeWeight(1);
  fill(map(mouseX, 12, width, 0, 255), map(mouseY, 0, height, 0, 255));
  //rectMode(CENTER);
ellipse(mouseX, mouseY, i, i);
  }
  
  if(calDis1() < 400){
  println("Inside the cirlcle");
  noStroke();
  fill(#FCC705);
fill(random(0, 255), random(0, 255), random(0, 255));
   ellipse(xC1, yC1, size++, size++);
  }else{
      fill(#FCC705);
    ellipse(xC1, yC1, size--, size--);
  }
  
if(mousePressed){
  //do sth
  background(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255),map(mouseY, 0, height, 0, 255));;
    float x1=mouseY;
  float y1=mouseX;
  float x2=mouseX;
  float y2=mouseY;
  
  int numDots = 40; //lerp function
  //float spacing = 100.0 / (numDots - 1);
  for(int x = 0; x < numDots; x++){
     for(int y = 0; y < numDots; y++){
       float px=lerp(x1, x2, x/10.0)+10;
    float py=lerp(y1, y2, y/10.0);
    stroke(255);
    strokeWeight(5);
    point(px, py);
     }
  }
  if(calDis1() < 150){
    //fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255), map(mouseX, 0, width, 0, 255));
  }
  if(OnPoint(mouseX, mouseY)==false){
  println("notonpoint");
textSize(50);
  fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 100, 255));
  textAlign(CENTER);
  text("NOPE", 500, 500);
}

}

}

int sum(int s1, int s2){ //int return
  int sum =s1+s2;
  return sum;
}

void circle1() {   
  noStroke();
  //fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255), map(mouseX, 0, width, 0, 255));
  //circle(map(mouseX, 0, width, width, 0), map(mouseY, 0, height, height, 0), 50);
    float r = random(10, 600);
  fill(map(mouseX, 0, width, 0, 255), map(mouseY, 0, height, 0, 255),map(mouseY, 0, height, 0, 255));
  stroke(#FCC705);
  strokeWeight(0.5);
ellipse(xC1, yC1, mouseX, mouseY); //r//r
}

float calDis1() {  //dis between mouse and center
  float distance=dist(mouseX, mouseY, width/2, height/2);
  return distance;
}
//float calcDist1(float x, float y ){
//  float dist = sqrt(sq(x - mouseX)+sq(y - mouseY));      
//  return dist;
//}
boolean OnPoint(float a, float b) { //boolean function
  if (a==500 && b==500) {
    return true;
  } else {
    return false;
  }
}
