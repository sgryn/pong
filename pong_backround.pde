class Star{
  
  float x,y,vx,vy, size;
  int h, s, b;
  Star() {
    x = random(0,width);
    y = random(0,height);
    vx= 0;
    vy = random(1, 5);
    size = vy;
    h= int(random(0,255));
    s = 255;
    b = 255;
  }
  void show() {
    fill(h,s,b);
    square(x,y, size);
  }
  void act() {
    y = y + vy;
    if(y > height+size) {
      size = vy;
      y =  size;
  }
  
  size = size + 0.02;
}
}
