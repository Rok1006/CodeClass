int scene = 0;
boolean onSceneOne;
boolean swordOn;
boolean shieldOn;
boolean umbrellaOn;
AlienQ thisalien;  //sample
Player myPlayer;   //sample
Alien blueAlien;
Enemy theEnemy;
PImage floor; 
PImage bg; 
int weaponIndex;
int attackIndex;
//int[] attack = new int [3];
      float xoff = 0.7; //bigship
float xincrement = 0.02; 
   float joff = 0.10; //smallship1
float jincrement = 0.05; 
   float koff = 0.50; //smallship2
float kincrement = 0.1; 
   float x0P; 
    float aoff = 0.2; //alien
float aincrement = 0.02; //Alien
ArrayList<Attacks> Water;//diff attack, give a number
ArrayList<Attacks> Bullet;
ArrayList<Attacks> Splash;
int which;
int alienHealth;
int refectAttack;
PFont mono;
 PImage[] UI = new PImage [3]; 

void setup(){   //start
  size(1500,900);
scene = 0; //change this to see result

thisalien = new AlienQ();   //sample
myPlayer = new Player();  //sample
blueAlien = new Alien(); 
theEnemy = new Enemy();
floor = loadImage("Floor.png"); 
bg = loadImage("pg.png"); 
swordOn = false;
shieldOn = false;
umbrellaOn = false;
//weaponIndex = new int [2];
weaponIndex = 0;
attackIndex = 0;

Water = new ArrayList<Attacks>();
Bullet = new ArrayList<Attacks>();
Splash = new ArrayList<Attacks>();
//RandomSpawn();
alienHealth = 20;
refectAttack = 0;

    UI[0] = loadImage("sw.png");
    UI[1] = loadImage("sh.png");
    UI[2] = loadImage("UM.png");
    mono = createFont("ARCADECLASSIC.TTF",30);
}

void draw(){   //update

println(scene);
  switch(scene){
    case 0 :
    startMenu();
    break;
    case 1 :
    Instruct();
    break;
    case 2 :
    playScene();
    break;
    case 3 :
    GoodEndScene();
    break;
      case 4 :
    BadEndScene();
    break;
  }

  if(blueAlien.xoff > 15){
    blueAlien.xoff = 0.2;
  }
  if(alienHealth < 0){
    scene = 4;
  }
if(refectAttack >=20){
   scene = 3;
}


}

void changeWeapon(){
    if(keyPressed){
       if(key == 'a'){
         println("isPressing");
         swordOn = true;
         shieldOn = false;
          umbrellaOn = false;
          weaponIndex = 2;
           //blueAlien.xoff = 0.2;
  
       }
         if(key == 's'){
           println("isPressing");
         shieldOn = true;
         swordOn = false;
          umbrellaOn = false;
           weaponIndex = 3;
           //blueAlien.xoff = 0.2;

       }
         if(key == 'd'){
         umbrellaOn = true;
         swordOn = false;
          shieldOn = false;
       weaponIndex = 1;
           //blueAlien.xoff = 0.2;

       }
  }
  if(swordOn){
    myPlayer.sword(); 
}
if(shieldOn){
    myPlayer.shield();
}
if(umbrellaOn){
    myPlayer.umbrella();
}

}
void startMenu(){
  
  background(0);
  textAlign(CENTER);
  fill(#FAFF15);
  textFont(mono);
  textSize(70); //change font afterwards
  text("Agent Simulator", width/2, 400);
  
  rectMode(CENTER);
  fill(#15FFF1);
  rect(width/2, height/1.35,150,50); //??
  textAlign(CENTER);
  fill(0);
  textSize(25); //change font afterwards
    text("Start", width/2, height/1.341);

}

void Instruct(){
  alienHealth = 20;
refectAttack = 0;
   background(0);
   imageMode(CENTER);
  image(UI[0], 750, 300, 400,450 ); //sw
  image(UI[1], 375, 300, 400,450 );  //sh
  image(UI[2], 1125, 300, 400,450 );  //um
  //Button Ready
   rectMode(CENTER);
  fill(#15FFF1);
  rect(width/2, 750,150,50); 
   textAlign(CENTER);
  fill(0);
  textSize(25);
  text("Ready", width/2, 755);
    fill(#FFE203);
  textSize(25);
  text("Press  A  to  switch  to", 750, 500);
  text("SWORD", 750, 550);
  text("Press  S  to  switch  to", 375, 500);
  text("SHIELD", 375, 550);
    text("Press  D  to  switch  to", 1125, 500);
  text("UMBRELLA", 1125, 550);
  
   text("Attack  TYPE  ", 1115, 610);
   fill(#03F4FF);
    rectMode(CENTER);
    rect(1200,600,5,34);
    fill(#FFE203);
   text("Attack  TYPE  ", 365, 610);
      fill(255);
      noStroke();
    ellipseMode(CENTER);
    ellipse(450,600,17,17);
    fill(#FFE203);
       text("Attack  TYPE  ", 740, 610);
           fill(#C508FA);
triangle(810, 595, 818, 610, 826, 595);
    
       fill(#FFE203);
      text("Use  different  weapons  to  defend  different  attacks ", 750, 670);
      text("Protect  the  ALIEN", 750, 700);
}
void playScene(){
    background(0); //replace to background??
      fill(0, 10);
      rectMode(CENTER);
  rect(width/2,height/2,width,height);
  imageMode(CENTER);
    image(bg, 750, 500, 1500,1080);
   image(floor, 750, 850, 1500,100);
  
  myPlayer.drawPlayer();
   changeWeapon();
  myPlayer.playerMove();
 blueAlien.alienMove();
theEnemy.leftSmallShip();
theEnemy.rightSmallShip();
//water();
  spawn();
//RandomSpawn();
theEnemy.BigShip();
//score
  textAlign(CENTER);
  fill(#FAFF15);
  textSize(30); //change font afterwards
  text("Health   "+alienHealth, 100, 60);
text("Score   "+refectAttack, 100, 100);
  

}

void GoodEndScene(){
  background(0);
  //congratulations
    textAlign(CENTER);
  fill(#FAFF15);
  textSize(30); //change font afterwards
  text("Congratulations !!!", 750, 200);
  text("You  have  saved  the  Alien  from  the  galactic  government !", 750, 300);
   text("You  will  be  rewarded", 750, 400);
   text("Do  you  want  to  accept  another  mission ?", 750, 500);
   
    rectMode(CENTER);
   fill(#FAFF15);
  rect(width/2, 650,150,50); 
   textAlign(CENTER);
  fill(0);
  textSize(20);
  text("REPLAY", width/2, 655);
   
}
void BadEndScene(){
  background(0);
    textAlign(CENTER);
  fill(#FF3131);
  textSize(30); //change font afterwards
  text("Failed !!!", 750, 200);
  text("You  couldnt  save  the  Alien  from  the  galactic  government !!", 750, 300);
   text("You  are  not  a  qualified  agent !!", 750, 400);
   text("Do  you  want  to  retry ?", 750, 500);
   
    rectMode(CENTER);
   fill(#FF3131);
  rect(width/2, 650,150,50); 
   textAlign(CENTER);
  fill(0);
  textSize(20);
  text("REPLAY", width/2, 655);
}

void mousePressed(){
    if(scene ==0){
  if(dist(mouseX, mouseY, width/2, height/1.35)<75){ //start button
    println("start click");
    scene=1;
  }
  }
    if(scene ==1){
      if(dist(mouseX, mouseY, width/2, 750)<75){
      println("another click");
      scene = 2;
  }
    }
    if(scene ==3){
      if(dist(mouseX, mouseY, width/2, 650)<75){
      alienHealth = 20;
      refectAttack = 0;
        scene = 0;
      }
    }
        if(scene ==4){
        if(dist(mouseX, mouseY, width/2, 650)<75){
          alienHealth = 20;
          refectAttack = 0;
        scene = 0;
            }
    }
    
  
  
}

void spawn(){   //add in interval
  //Water.clear(); 
  //Bullet.clear();
  //Splash.clear();
    float n = noise(xoff)*width;
      xoff += xincrement;
      water();
      if(frameCount % 30 ==0){   //higher the number less things come down
  Water.add(new Attacks(n, 0, random(10,50))); 
      }
   float j = noise(joff)*width;
      joff += jincrement;
      bullet();
      if(frameCount % 30 ==0){
       Bullet.add(new Attacks(j, 0, random(10,50))); 
      }
   float k = noise(koff)*width;
      koff += kincrement;
      splash();
      if(frameCount % 30 ==0){
      Splash.add(new Attacks(k, 0, random(10,50))); 
      }
}

void water(){
    for(int i=0; i < Water.size(); i++){
    //println("where");
    Attacks water = Water.get(i); 
    water.bigShipPos();
    water.update();
    water.waterdropAttack();
    //water.Random();
           if(water.y>780){  //if hit the floor
      Water.remove(i); 
    } 
    if(dist(myPlayer.xP,680,water.x,water.y)<120&&water.attackIn==weaponIndex){ //1=1
      println("water");
       Water.remove(i); 
       refectAttack+=1;
    }
     float n = noise(aoff)*width;
      aoff += aincrement;
     if(dist(n,790,water.x,water.y)<60){ //alien
         println("dead");
       //Water.remove(i); 
       alienHealth-=1;
    }
  }
}
 void bullet(){
       for(int i=0; i < Bullet.size(); i++){
    //println("where");
    Attacks bullet = Bullet.get(i); 
    bullet.bigShipPos();
    bullet.update();
    bullet.bullet();
           if(bullet.y>780){  //if hit the floor
      Bullet.remove(i); 
    } 
     if(dist(myPlayer.xP,718,bullet.x,bullet.y)<100&&bullet.attackIn==weaponIndex){ //2=2
      println("dead");
       Bullet.remove(i); 
       refectAttack+=1;
    } 
        float n = noise(aoff)*width;
      aoff += aincrement;
     if(dist(n,790,bullet.x,bullet.y)<60){ 
         //println("dead");
       //Bullet.remove(i); 
       alienHealth-=1;
       
    }
    
  }
 }
 void splash(){
        for(int i=0; i < Splash.size(); i++){
    //println("where");
    Attacks splash = Splash.get(i); 
    splash.bigShipPos();
    splash.update();
    splash.splash();
           if(splash.y>780 ){  //if hit the floor
      Splash.remove(i); 
    } 
       if(dist(myPlayer.xP,705,splash.x,splash.y)<120&&splash.attackIn==weaponIndex){ //3=3
      println("splash");
      Splash.remove(i); 
      refectAttack+=1;
    }
        float n = noise(aoff)*width;
      aoff += aincrement;
     if(dist(n,790,splash.x,splash.y)<60){ // 680
         println("dead");
       //Splash.remove(i); 
       alienHealth-=1;
    }
  }
   
   
 }
