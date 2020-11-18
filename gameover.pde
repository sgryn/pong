void gameover() {
  fill(#FF0303);
  
clap.play();
    
   if (rightscore == 3){
     textSize(150);
text("rightwins" ,100,300);

 }
  if (leftscore == 3){
    
     textSize(150);
text("leftwins" ,100,300);

 }
}




void gameoverClicks(){
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

   mode= INTRO; 
   
}
