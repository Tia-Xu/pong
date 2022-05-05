void pause() {
   theme.pause();
  fill(255);
  strokeWeight(3);
  tactile(725,25,50,50);
   rect(730,30,45,40);
   stroke(0);
  line(743,35,743,65);
  line(760,35,760,65);
  stroke(#1D3557);
  triangle(365,250,365,350,450,300);
  
  
  
}

void pauseClicks()  {

  if (dist(mouseX, mouseY, 750,50 )<50){
   mode=GAME;
   theme.rewind();
    
  }
}
