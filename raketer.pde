class raket {
  color c;
  float xpos;
  float ypos;
  float xspeed;
  float yspeed;
  boolean raketKnap = false;

  //konstruktøren 
  raket(color Tc, float Txpos, float Typos, float Txspeed, float Tyspeed) {
    c = Tc; 
    xpos = Txpos; 
    ypos = Typos; 
    xspeed = Txspeed; 
    yspeed = Tyspeed;
  }

  void display() {
    noStroke();
    fill(c);
    rect(xpos, ypos, 30, 50); 
    fill(2014, 0, 0);
    triangle(xpos, ypos, xpos+30, ypos, xpos+15, ypos-25);
    quad(xpos, ypos+50, xpos, ypos+35, xpos-10, ypos+40, xpos-10, ypos+55);
    quad(xpos+30, ypos+50, xpos+30, ypos+35, xpos+40, ypos+40, xpos+40, ypos+55);
    rect (xpos+13.5, ypos+35, 3, 20);
    stroke(c+100);
    fill(214, 234, 248);
    circle(xpos+14.5, ypos+15, 15);
  }

  void klik() {
    if (mouseX > xpos && mouseX < xpos+xspeed && mouseY > ypos && mouseY < ypos+yspeed) {
      raketKnap = true;
    }
  }

  void flyvtilgron() {
    xpos = 250;
    ypos = 40;
  }

  void flyvtilgul() {
   xpos = 590;
   ypos = 40;
  }
  
  void flyvtilrod(){
    xpos = 490;
    ypos = 220; 
  }
  
  void flyvtillil(){
    xpos = 90;
    ypos = 275;
  }
}
