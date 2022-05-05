void reset(){
   leftx=0;
  lefty=height/2;
  leftd=75;
  rightx=width;
  righty=height/2;
  rightd=75;
  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=50;
  vballx=(5);
  vbally=(5);
  //initialize keyboard
  wkey=skey=upkey=downkey=false;
  imageMode(CENTER);
  textMode(CENTER);
  //initialize score
  rightscore=leftscore=0;
  timer=50;
}
