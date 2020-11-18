void intro(){

    background(5);
    
    

intro.play();

    
        strokeWeight(4);
        
    tactile1(300,350,200,100);
    rect(300, 350, 200,100);
    fill(#423743);
    textSize(25);
  
    
    
    strokeWeight(4);
    tactile1(300,480,200,100);
    rect(300, 480, 200,100);
    fill(255);
    textSize(35);
    text("2 player",325,420);
    text("1 player",325,540);
    
    //===================================================================
    fill(255);
    textSize(200);
    text("pong",130,300);
    fill(0);
    text("pong",133,303);
     fill(255);
    textSize(200);
    text("pong",136,306);
    //===================================================================
    
}
void introClicks() {
  


  
 if (mouseX > 300 && mouseX < 480  && mouseY > 480  && mouseY < 580) {
 mode = GAME;
  AI = true;
 }
   if (mouseX > 300 && mouseX < 350  && mouseY > 350  && mouseY < 450){ 
 mode = GAME;

   AI = false;
 }
 }   
