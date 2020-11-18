void tactile1 (int x,int y,int w, int h ){
if (mouseX > x && mouseX < x+w && mouseY > y && mouseY < y+h) {
  strokeWeight(6); 
  stroke(255); 
  fill(0);
}   else{
    
stroke(0); 
  fill(255);
}
}
