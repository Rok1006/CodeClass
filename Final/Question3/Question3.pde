float xPos, yPos; 
float r, g, b; 

void setup() {
size(600, 600); 
smooth();  
noStroke();
}

void draw() {

//draws background
for (int i = 0; i < width; i++) {
for (int j = 0; j < height; j++) {
float r = map(i, 0, width, 255, 91);
    float g = map(j, 0, height, 170, 33);
stroke(r, g, 175);
point(i, j);
}
}
xPos = sin(radians(second()))*width; 
yPos = sin(radians(second()))*height; 


ellipse(xPos, yPos, 100, 100);
}
