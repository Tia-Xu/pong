void game() {
  background(0);

  //paddles
  ellipse(leftx, lefty, leftd, leftd);
  ellipse(rightx, righty, rightd, rightd);

  //move paddles
  if (wkey==true) lefty=lefty-5;
  if (skey==true) lefty=lefty+5;


  if (upkey==true) righty=righty-5;
  if (downkey==true) righty=righty+5;


  //ball
  ellipse(ballx, bally, balld, balld);

  //move ball
  ballx=ballx+vballx;
  bally=bally+vbally;

  if (ballx<=balld/2||ballx>width-balld/2) {
    vballx=vballx*-1;
  }
  if (bally<=balld/2||bally>height-balld/2) {
    vbally=vbally*-1;
  }

  if (dist(ballx, bally,leftx, lefty)<=balld/2+leftd/2) {
    vballx=(ballx-leftx)/15;
    vbally=(bally-lefty)/15;
  }
  if (dist(ballx, bally,rightx, righty)<=balld/2+rightd/2) {
    vballx=(ballx-rightx)/13;
    vbally=(bally-righty)/13;
  }
}

void gameClicks() {
}

