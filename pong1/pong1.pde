
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;



//pong

import ddf.minim.spi.*;
import ddf.minim.signals.*;
import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.ugens.*;
import ddf.minim.effects.*;

int mode;
final int INTRO=1;
final int PAUSE = 2;
final int GAME=3;
final int GAMEOVER = 4;
final int SETTINGS=5;
final int HELP=6;
Minim minim;
AudioPlayer theme;


//entities
float leftx, lefty,leftd, rightx, righty, rightd; 
//paddles
float ballx, bally, balld; //ball
float vballx,vbally;
boolean AI;
//keyboard
boolean wkey,skey,upkey,downkey;
//score
int leftscore, rightscore;
int timer;



void setup() {
  size(800, 600);
  mode = INTRO;
  
  //initialize paddles
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
  AI=false;
  minim=new Minim(this);
  theme=minim.loadFile("mario bros theme.mp3");
}
void draw() {

  if (mode==INTRO) {
    intro();
  } else if (mode==GAME) {
    game();
  } else if (mode==PAUSE) {
    pause();
  } else if (mode==GAMEOVER) {
    gameover();
  } else if (mode==HELP) {
    help();
  } else {
    println("Error: Mode = "+mode);
  }
}

