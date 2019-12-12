int numStrings = 7; 
float[] stringsX= new float[numStrings]; 
float[] stringsY = new float[numStrings]; 
String[] words = {"Hello", "is", "it", "me", "you're", "looking", "for"} ;
int n = 0;
void setup() {

size(700, 100); 
smooth(); 
 background(255); 
int spacing = width / numStrings; 
for (int i=0; i<numStrings; i++) {
stringsX[i] = 50 + i*spacing; 
stringsY[i] = 50;
fill(0);
}
}

void draw() {
  background(255); 


for (int i=0; i<numStrings; i++) {
if (dist(mouseX, mouseY, stringsX[i], stringsY[i])<50) {
 fill(255,0,0);
text(words[i], stringsX[i],stringsY[i]);
} else {
fill(0,0,0);
text(words[i], stringsX[i],stringsY[i]);
}
 
}
}
