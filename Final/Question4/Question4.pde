int n1, n2; 
int sum; 
String additionSentence; 
String string1, string2;
String combinedString;

void setup(){
size(300, 300); 

n1 = int(random(0,10)); 
n2 = int(random(0,10)); 

sum = addNumbers(n1,n2);
string1 = ("Hello, ");
string2 = ("I am good");
combinedString = returnAString(string1,string2);

additionSentence = str(n1) + " + " + str(n2) + " = " + str(sum); 
text(additionSentence, width*.2, height/2); 
text(combinedString, width*.3, height/3); 
//display text from the return a string function 
}


int addNumbers(int num1, int num2){
//addition sentence here
int sumLocal = num1 + num2; 
return sumLocal; 
}


//fix the function errors here
String returnAString(String string1, String string2){
String combinedString = string1 + string2; 
return combinedString;
} 
