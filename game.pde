void game() {
  


      
  
  background(255);

  
  //center line 

  strokeWeight(5);
  stroke(0);
  line(width/2,0,width/2,height);
  
  //scoreboard 
  textSize(50);
  fill(0);
  text(leftscore, width/4 ,100);
 text(rightscore, 3 * width/4 ,100);
 // text (timer, 3 * width/4 ,550);
  timer = timer - 1;
  
  
  
  //paddles
    circle(leftx, lefty, leftd);
  circle(rightx, righty, rightd);
  
  
  
  //move paddles 
  if (wkey == true) lefty = lefty - 5;
  if (skey == true) lefty = lefty + 5;
  
  
  if(AI==false){
    if (upkey == true) righty = righty - 5;
  if (downkey == true) righty = righty + 5;
  }else {
   if(ballx > 510 + balld/2 )

  if (bally < righty) righty = righty - 5;
if (bally > righty) righty = righty + 5;
     }
     
     
  
  //ball
  circle(ballx, bally, balld);
  
  if(timer < 0) {
   ballx = ballx + vx;
  bally = bally + vy;
  }

   
   //boncing
 //if(ballx < balld/2 || ballx > width-balld/2) { 
 //  vx = vx * -1;
   
 //}
 //scoreing left
 if(ballx < 0 ) { 
  rightscore++;
  ballx = width/2;
  bally = height/2;  
  timer= 100;
   score.play();
   score.rewind();
}
 //scoreing right
  if(ballx > 800) { 
  leftscore++;
  ballx = width/2;
  bally = height/2;  
   timer= 100;
     score.play();
     score.rewind();
}




 
 
if(lefty < leftd/2){
  lefty = leftd/2;
 }
  if(righty < rightd/2){
   righty = rightd/2;
 }
  if(lefty > 500){
   lefty = 500;
 }
  if(righty > 500){
   righty = 500;
 }

 if(bally < balld/2 || bally > height-balld/2) { 
   vy = vy * -1;
   wall.play();
   wall.rewind();
}
 if (dist(leftx,lefty,ballx,bally) < r+R ){
vx= (ballx-leftx)/hard;
vy= (bally-lefty)/hard;
hard = hard - 0.1;
leftpaddle.play();
leftpaddle.rewind();
 }
if (dist(rightx,righty,ballx,bally) < r+R ){
vx= (ballx-rightx)/hard;
vy= (bally-righty)/hard;
hard = hard - 0.1;
rightpaddle.play();
rightpaddle.rewind();
 }
 if(hard< 10){
 hard= hard + 1;
 }
 
 if (rightscore == 3){
   mode= GAMEOVER;
 }
  if (leftscore == 3){
   mode= GAMEOVER;
  }
  }



void gameClicks(){
  mode = PAUSE;
}

//if (d<= r+R){
 // vx = vx * -1;
//}

//dist(leftx,lefty,ballx,bally)
