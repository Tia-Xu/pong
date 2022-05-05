void game() {
  theme.play();
  background(0);
  stroke(#FD1C03);
  line(0, 0, 800, 0);
  line(0, 600, 800, 600);
  line(0, 0, 0, 600);
  line(800, 0, 800, 600);
  stroke(0, 0, 255);
  line(400, 0, 800, 0);
  line(800, 0, 800, 600);
  line(400, 600, 800, 600);
  stroke(255);
  line(width/2, 0, width/2, 600);
  stroke(0);
  line(395/2, 25, 405, 25);
  line(395/2, 50, 405, 50);
  line(395/2, 75, 405, 75);
  line(395/2, 100, 405, 100);
  line(395/2, 125, 405, 125);
  line(395/2, 150, 405, 150);
  line(395/2, 175, 405, 175);
  line(395/2, 200, 405, 200);
  line(395/2, 225, 405, 225);
  line(395/2, 250, 405, 250);
  line(395/2, 275, 405, 275);
  line(395/2, 300, 405, 300);
  line(395/2, 325, 405, 325);
  line(395/2, 350, 405, 350);
  line(395/2, 375, 405, 375);
  line(395/2, 400, 405, 400);
  line(395/2, 425, 405, 425); 
  line(395/2, 450, 405, 450); 
  line(395/2, 475, 405, 475); 
  line(395/2, 500, 405, 500); 
  line(395/2, 525, 405, 525); 
  line(395/2, 550, 405, 550); 
  line(395/2, 575, 405, 575); 

  //paddles
  fill(255, 0, 0);
  stroke(255);
  strokeWeight(8);
  ellipse(leftx, lefty, leftd, 100);
  fill(0, 0, 255);
  stroke(255);
  ellipse(rightx, righty, rightd, 100);

  //move paddles
  if (wkey==true)
    if (lefty>50)
      lefty=lefty-5;
  if (skey==true)
    if (lefty<550)
      lefty=lefty+5;


  //if (upkey==true) 
  //  if (righty>50)
  //    righty=righty-5;

  // if (downkey==true) 
  //  if (righty<550)
  //    righty=righty+5;

  println(AI);

  float speed = min(abs(righty-bally), 5);

  if (AI==false) {
    if (upkey==true) 
      if (righty>50)  righty=righty-5;
    if (downkey==true) 
      if (righty<550)  righty=righty+5;
  } else if (AI==true) {
    if (righty<bally) {
      righty= righty+speed;
    } 
    if (righty>bally) { 
      righty= righty-speed;
    }
  }





  //ball
  fill(255);
  stroke(255);
  ellipse(ballx, bally, balld, balld);

  //move ball
  if (timer < 0) {
    ballx=ballx+vballx;
    bally=bally+vbally;
  }

  if (ballx<=balld/2||ballx>width-balld/2) {
    vballx=vballx*-1;
  }
  if (bally<=balld/2||bally>height-balld/2) {
    vbally=vbally*-1;
  }

  if (dist(ballx, bally, leftx, lefty)<=balld/2+leftd/2) {
    vballx=(ballx-leftx)/7;
    vbally=(bally-lefty)/7;
  }
  if (dist(ballx, bally, rightx, righty)<=balld/2+rightd/2) {
    vballx=(ballx-rightx)/7;
    vbally=(bally-righty)/7;
  }

  //scoring
  if (ballx<26) {
    rightscore++;
    ballx=width/2;
    bally=height/2;
    timer=50;
    if (rightscore>=3) {
      mode=GAMEOVER;
    }
  }

  if (ballx>775) {
    leftscore++;
    ballx=width/2;
    bally=height/2;
    timer=50;
    if (leftscore>=3) {
      mode=GAMEOVER;
    }
  }



  //scoreboard
  textSize(50);
  fill(#f1ffc4);
  text(leftscore, width/4, 100);
  fill(#f1ffc4);
  text(rightscore, 3*width/4, 100);


  // text(timer,width/2, 500);
  timer=timer-1;
  stroke(0);
  strokeWeight(3);
  rect(730,30,45,40);
  triangle(740,35,740,65,765,48);
}


void gameClicks() {
  if (dist(mouseX, mouseY, 750,50 )<50){
   mode=PAUSE;}
}

