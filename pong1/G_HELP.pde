void help() {
  fill(#a7bed3);
  stroke(0);
  rect(100,100,600,400);
  tactile(550,400,100,50);
  fill(#c6e2e9);
  rect(550,400,100,50);
  fill(0);
  textFont(pl);
  textSize(25);
  text("OKAY",570,435);
  textFont(it);
  textSize(20);
  text("RED PLAYER:",175,250);
  text("BLUE PLAYER:",175,200);
  textFont(pl);
  textSize(20);
  text("SINGLE-PLAYER",150,300);
  text("MULTI-PLAYER",150,150);
  textFont(it);
  textSize(20);
  text("PLAY AS RED",390,300);
  text("use 'w''s' keys to move",390,250);
  text("use up, down arrow keys",390,200);
  text("good luck!",150,430);
  textSize(20);
  text("Bounce the ball on your opponents wall",185,350);
  text("to get a point. First player to 5 wins",197,370);
  
}
void helpClicks()  {
  if (mouseX>550 && mouseX<650 && mouseY>400 && mouseY<450) 
    mode=INTRO;
  
}
