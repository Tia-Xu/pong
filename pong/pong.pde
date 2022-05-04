
//pong

int mode;
final int INTRO=1;
final int PAUSE = 2;
final int GAME=3;
final int GAMEOVER = 4;
final int SETTINGS=5;


//entities
float leftx, lefty,leftd, rightx, righty, rightd; //paddles
float ballx, bally, balld; //ball
float vballx,vbally;
//keyboard
boolean wkey,skey,upkey,downkey;



void setup() {
  size(800, 600);
  mode = INTRO;
  
  //initialize paddles
  leftx=0;
  lefty=height/2;
  leftd=200;
  rightx=width;
  righty=height/2;
  rightd=200;
  //initialize ball
  ballx=width/2;
  bally=height/2;
  balld=100;
  vballx=(8);
  vbally=(8);
  //initialize keyboard
  wkey=skey=upkey=downkey=false;
  
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
  } else if (mode==SETTINGS) {
    settings();
  } else {
    println("Error: Mode = "+mode);
  }
}

