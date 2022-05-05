PImage ib;
PFont it;
PFont pl;

void intro() {
  reset();
   theme.play();
  ib=loadImage("ib.jpeg");
  pl=createFont("walkthemoon.ttf", 23);
  image(ib, 400, 300, 800, 600); 
  fill(255);
  strokeWeight(1);
  it=createFont("upheavtt.ttf", 150);
  textFont(it);
  text("PONG", 250, 300);
  textSize(100);
  text("BEER", 225, 200);
  fill(0);
  stroke(255);
  strokeWeight(5);
  tactile(75, 450, 175, 50);
  rect(75, 450, 175, 50, 20);
  tactile(350, 450, 175, 50);
  rect(350, 450, 175, 50, 20);
  tactile(700, 75, 55, 50);
  rect(700, 75, 55, 50);
  textFont(pl);
  fill(255);
  text("SINGLE PLAYER", 83, 485);
  text("MULTI PLAYER", 362, 485);
  textSize(50);
  text("?", 718, 118);
}

void tactile(int x, int y, int a, int b) {
  if (mouseX<x+a && mouseX>x && mouseY<y+b && mouseY>y) {
    stroke(255, 0, 0);
  } else {
    stroke(255);
  }
}

void introClicks() {
  if (mouseX>350 && mouseX<525 && mouseY>450 && mouseY<500) {
    mode=GAME;
    AI=false;
  }
  if (mouseX>75 && mouseX<250 && mouseY>450 && mouseY<500) {
    mode=GAME;
    AI=true;
  }
 
  if (mouseX>700 && mouseX<755 && mouseY>100 && mouseY<150)  
    mode=HELP;
}

