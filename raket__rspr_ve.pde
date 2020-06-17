//kalder rakter, planter og stjerner
raket minRaket1; 
raket minRaket2; 
planet minPlanet1; 
planet minPlanet2; 
planet minPlanet3; 
planet minPlanet4;
stjerner[] stjernebag = new stjerner[500];
int totalStjerner = 0;

void setup() {
  size(700, 500);
  //opretter en raket
  minRaket1 = new raket(color(255, 179, 217), 90, 275, 50, 80); //lys pink
  minRaket2 = new raket(color(20, 159, 190), 530, 240, 50, 80); //lilla

//165, 105, 189) 
  //opretter en planet
  minPlanet1 = new planet(color(26, 188, 156), 250, 180, 200); //grøn
  minPlanet2 = new planet(color(255, 204, 51), 600, 150, 130); //orange
  minPlanet3 = new planet(color(255, 102, 102), 500, 350, 180); //"rød"
  minPlanet4 = new planet(color(142, 68, 173), 100, 400, 170); //lilla
}

void draw() {
  clear();
  //baggrund
  background(0, 0, 51);

  //stjernebaggrund
  stjernebag[totalStjerner] = new stjerner();
  totalStjerner++;

  if (totalStjerner >= stjernebag.length) {
    totalStjerner = 0;
  }

  for (int i = 0; i < totalStjerner; i++) {
    stjernebag[i].display();
  }

  //Planeterne
  minPlanet1.display(); 
  minPlanet2.display(); 
  minPlanet3.display(); 
  minPlanet4.display();
  strokeWeight(4); //"settings for planetring
  stroke(142, 68, 173); 
  noFill(); 
  arc(484, 350, 210, 40, 0, PI+QUARTER_PI, OPEN); //ring på planet

  //Raketerne
  strokeWeight(1);
  minRaket1.display(); 
  minRaket2.display(); 
  
  //lyspinkraket til grønplanet
  if (minPlanet1.planetKlik == true) {
    if (minRaket1.raketKnap == true) { 
      println("wow");
      minRaket1.flyvtilgron();
      minRaket1.raketKnap = !minRaket1.raketKnap;
    }
    minPlanet1.planetKlik = !minPlanet1.planetKlik;
  }
  
  //lyspink til gulplanet
  if (minPlanet2.planetKlik == true) {
    if (minRaket1.raketKnap == true) { 
      println("av");
      minRaket1.flyvtilgul();
      minRaket1.raketKnap = !minRaket1.raketKnap;
    }
    minPlanet2.planetKlik = !minPlanet2.planetKlik;
  }
  
  //lyspink til rød planet
  if (minPlanet3.planetKlik == true) {
    if (minRaket1.raketKnap == true) { 
      println("kriig");
      minRaket1.flyvtilrod();
      minRaket1.raketKnap = !minRaket1.raketKnap;
    }
    minPlanet3.planetKlik = !minPlanet3.planetKlik;
  }
  
  //lyspink til lilla planet
  if (minPlanet4.planetKlik == true) {
    if (minRaket1.raketKnap == true) { 
      println("hjem kære hjem");
      minRaket1.flyvtillil();
      minRaket1.raketKnap = !minRaket1.raketKnap;
    }
    minPlanet4.planetKlik = !minPlanet4.planetKlik;
  }
}

void mouseClicked() {
  minRaket1.klik();
  minPlanet1.klik();
  minPlanet2.klik();
  minPlanet3.klik();
  minPlanet4.klik();
}
