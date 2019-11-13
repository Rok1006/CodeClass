 int rect = 250;
 int recth1 = 500;
  int rectw1 = 100;
 int recth2 = 8;
 int rectw2 = 3;
  int ewh = 15;

void setup()
{
  size(500, 500);
  background(#B4F7FF);
  println(width); 
  println(height);
  //fill(#5EA08F);
  //textSize(32);
  //text("TASTYPOP", 175, 150); 
 
}
void draw()
{
  //background
  noStroke();
  fill(#D1FFFB);
  rectMode(CENTER);
  rect(rectw1, rect, rectw1, recth1); 
  fill(#D1FFFB);
  rectMode(CENTER);
  rect(rect, rect, rectw1, recth1);
  fill(#D1FFFB);
  rectMode(CENTER);
  rect(400, rect, rectw1, recth1);
  fill(#5EA08F);
  textSize(32);
  text("LOLLIPOP", 175, 150); 
  
  noStroke();
  //middlelolli1pop
  //rod
  stroke(0);
  stroke(#C2A6C6);
  fill(#FFFFFF);
  rectMode(CENTER);
  rect(rect, 320, 9, 200); //x,y,width,height
  //circle
  fill(#F6C5F7);
  //stroke(#C479C4);
  //strokeWeight(2);
  noStroke();
  ellipseMode(CENTER); 
  ellipse(width/2, height/2, 80, 80); 
  noStroke();
  //rod2
  //noStroke();
  fill(#F9DEFA);
  rectMode(CENTER);
  rect(rect, rect, 83, 9);
  
  fill(#7CFFE4);
  rectMode(CENTER);
  rect(rect, 240, rectw2, recth2);
  fill(#BDB2FF);
  rectMode(CENTER);
  rect(240, 220, rectw2, recth2);
  fill(#FF7231);
  rectMode(CENTER);
  rect(230, rect, rectw2, recth2);
  fill(#FA1919);
  rectMode(CENTER);
  rect(260, 245, rectw2, recth2);
  fill(#FFF703);
  rectMode(CENTER);
  rect(270, 225, rectw2, recth2);
  fill(#6A95FF);
  rectMode(CENTER);
  rect(280, 240, rectw2, recth2);

  //Left lollipop
  //noStroke();
  stroke(0);
  stroke(#C2A6C6);
  fill(#FFFFFF);
  rectMode(CENTER);
  rect(120, 320, 10, 205);
  fill(#F1A6F2);
  //stroke(#C479C4);
  //strokeWeight(2);
  noStroke();
  ellipseMode(CENTER); 
  ellipse(120, 240, rectw1, rectw1); 
  fill(#F0BFF2);
  rectMode(CENTER);
  rect(120, 240, 103, 11);
  noStroke();

    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(150, 225, ewh, ewh); 
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(120, 215, ewh, ewh); 
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(90, 260, ewh, ewh); 
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(140, 270, ewh, ewh); 
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(140, 200, ewh, ewh); 
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(rectw1, 203, ewh, ewh);
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(85, 220, ewh, ewh);
    fill(#F6C5F7);
    ellipseMode(CENTER); 
    ellipse(120, 275, ewh, ewh);


  //RightLollipop
  //noStroke();
  stroke(0);
  stroke(#C2A6C6);
  fill(#FFFFFF);
  rectMode(CENTER);
  rect(370, 320, 8, 195); //x,y,width,height
  //circle
  noStroke();
  fill(#F9DEFA);
  //stroke(#C479C4);
  //strokeWeight(2);
  ellipseMode(CENTER); 
  ellipse(370, height/2, 60, 60); 
  //rod2
  noStroke();
  fill(#FCEDFC);
  rectMode(CENTER);
  rect(370, rect, 63, 7);
}
