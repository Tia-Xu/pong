void gameover() {
  background(0);
  fill(255);
  rect(550,25,100,50);
  textSize(25);
  fill(0);
   text("EXIT", 575,60);
   fill(255);
   text("PRESS SCREEN TO RESPAWN OR ",175,60);
  if(leftscore>rightscore){
    fill(255,0,0);
    textSize(70);
    text("RED WINS",230,300);
  }else{
    fill(0,0,255);
     textSize(70);
    text("BLUE WINS",230,300);
  }
}

void gameoverClicks()  {
  
  if (mouseX>550 && mouseX<650 && mouseY>25 && mouseY<75) {
    exit();
  } else {
    mode=INTRO;
  }
}

