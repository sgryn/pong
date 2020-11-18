import ddf.minim.*;
import ddf.minim.analysis.*;
import ddf.minim.effects.*;
import ddf.minim.signals.*;
import ddf.minim.spi.*;
import ddf.minim.ugens.*;
//pong
//stella
//2-2
//mode fram
int mode;
final int INTRO     =1;
final int GAME      = 2;
final int PAUSE     = 3;
final int GAMEOVER  =4;


//entetity varibles 
float leftx, lefty, leftd, rightx, righty, rightd;//paddels
float ballx, bally, balld;//ball
float vx;
float vy;
float r,R,d;
float hard;

int rightscore,leftscore, timer;
//keyword variables

boolean wkey, skey, upkey, downkey;
boolean AI;
Minim minim;
AudioPlayer theme,clap,bump,intro,leftpaddle,rightpaddle,score,wall;



void setup(){
  size(800,600);
  mode = INTRO;
  
  
  
   minim= new Minim(this);
 clap= minim.loadFile("clapping.wav");
 intro = minim.loadFile("intro.wav");
 leftpaddle = minim.loadFile("leftpaddle.wav");
 rightpaddle= minim.loadFile("rightpaddle.wav");
 score= minim.loadFile("score.wav");
 wall= minim.loadFile("wall.wav");  
  
  //intalized pabbles
 leftx = 0;
 lefty = height/2;
 leftd = 200;
 
 
 rightx = width;
 righty = height/2;
 rightd =  200;
 
  //intalized ball
 ballx = width/2;
 bally = height/2;
 balld  = 100;
  r = leftd/2;
 R = balld/2 ;
hard = 20;
rightscore = 0;
leftscore =  0;
 vx = random(-5,5);
 vy = random(-5,5);
 timer= 100;
  
 //key board varibes
 wkey = skey = upkey = downkey  = false;
  
}
void draw(){
  if(mode == INTRO){
    intro();
}else if(mode == GAME) {
  game();
}else if(mode == PAUSE) {
  pause();
}else if(mode == GAMEOVER) {
  gameover();
}else {
 println("Mode error: " + mode);
}
}
