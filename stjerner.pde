class stjerner{
  float x, y; 
  color c;
  float r;
  
  stjerner(){
     c = color(244,255,255); x = random(width); y = random(height); r = random(1,3);
  }
  
  void display(){
    fill(c);
    stroke(255,189,227);
    circle(x,y,r);
  }
  
}
