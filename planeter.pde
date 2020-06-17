class planet{
  float x;
  float y;
  float d;
  color cl;
  boolean planetKlik = false;
  
  planet(color Tcl, float Tx, float Ty, float Td){
     cl = Tcl; x = Tx; y = Ty; d = Td;
  }
  
  void display(){
    noStroke();
    fill(cl);
    circle(x, y, d);
  }
  
  void klik(){
    float disX = x - mouseX;
    float disY = y - mouseY;
    if(sqrt(sq(disX) + sq(disY)) < d/2 ){
      planetKlik = true;
    }
  }
  
}
