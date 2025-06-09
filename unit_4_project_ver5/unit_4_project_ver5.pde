//Unit 4 Project

// Start variable setup ===========================================================================================

color sky      = #87CEEB;
color lawn     = #3F9B0B;
color grass    = #55C233;
color sun      = #FED33C;
color yellow   = #FFDE21;
color white    = #FFFFFF;
color black    = #000000;
color lavendar = #B9A5E2;
color purple   = #4C159D;
color pink     = #FFC0CB;
color wall     = #FFFDD0;
color roof     = #C76E00;
color door     = #964B00;
color grey     = #808080;

color flowerSelectedColour;
color houseSelectedColour;


float grassHeight = random(225, 575);
float l = int(random(5, 9));


// End variable setup =============================================================================================

void setup () { // Start setup() ==================================================================================
  size(1200, 800);
  background(sky);

  grass(600);
  sun((int)random(2, 4));
  flower((int)random(40, 60));
  house((int)random(3, 5), (int)random(25, 50));
} // End setup() ==================================================================================================

void grass(int number) { // Start grass() ===================================================================================
  noStroke();
  fill(lawn);
  rect(0, height-grassHeight, width, grassHeight);
  int i = 0;
  fill(grass);

  while (i < number) {
    float r = random(-0.2, 0.2);

    pushMatrix();
    translate(random(0, 1200), random(800-grassHeight, 800));
    rotate(r);
    triangle(-6, 15, 0, -15, 6, 15);
    i += 1;
    popMatrix();
  }
} // End grass() ==================================================================================================

void sun(int number) { // Start sun() ==================================================================================

  int j = 0;

  while (j < number) {

    pushMatrix();

    scale(0.9);
    translate(random(0, 1200), random(0, 200));
    sunCircle();
    sunTriangle();

    popMatrix();

    j += 1;
  }
} // End sun() ====================================================================================================

void sunCircle() {
  noStroke();
  fill(sun);
  circle(0, 0, 100);
}

void sunTriangle() {
  rotate(random(0, 2*PI));
  int i = 0;
  float l = int(random(7, 14));

  while (i < l) {
    triangle(-10, -55, 10, -55, 0, -90);
    rotate(2*PI/l);
    i += 1;
  }
}

void flower(int number) { // Start flower() ============================================================================
  pushMatrix();
  stroke(black);
  strokeWeight(2);

  int i = 0;
  int j = 0;

  while (i < number) {
    float r = random(0, 2*PI);
    int c = int(random(0, 4));
    float s = random(1, 2);

    pushMatrix();

    translate(random(0, 1200), random(800-grassHeight, 800));
    rotate(r);
    scale(s);

    while (j < l) {
      flowerClourSelection(c);
      flowerTriangle();
      j += 1;
    }

    j = 0;
    flowerCenter();
    i += 1;

    popMatrix();
  }

  popMatrix();
} // End flower() =================================================================================================

void flowerClourSelection(int c) {
  if (c == 1) {
    flowerSelectedColour = white;
  } else if (c == 2) {
    flowerSelectedColour = lavendar;
  } else if (c == 3) {
    flowerSelectedColour = purple;
  } else {
    flowerSelectedColour = pink;
  }
}

void flowerCenter() {
  fill(yellow);
  circle(0, 0, 20);
}

void flowerTriangle() {
  rotate(2*PI/l);
  fill(flowerSelectedColour);
  ellipse(0, 10, random(12, 17), random(20, 30));
}

void house(int number, int bricks) { // Start house() ==============================================================================
  stroke(black);
  strokeWeight(3);
  int i = 0;
  int j = 0;
  color selectedColour;

  while (i < number) {
    pushMatrix();

    translate(random(0, 1050), random(800-grassHeight, 800));

    wall();

    roof();

    while (j < bricks) {

      colourSelectionHouse();
      bricks();
      j += 1;
    }

    j = 0;

    pushMatrix();
    door();

    popMatrix();

    popMatrix();
    i += 1;
  }
}// End house() ==================================================================================================

void wall() {
  fill(wall);
  rect(0, -150, 150, 150);
}

void roof() {
  fill(roof);
  triangle(0, -150, 150, -150, random(0, 150), random(-200, -160));
}

void colourSelectionHouse() {
  int c = int(random(0, 4));

  if (c == 1) {
    houseSelectedColour = white;
  } else if (c == 2) {
    houseSelectedColour = roof;
  } else if (c == 3) {
    houseSelectedColour = door;
  } else {
    houseSelectedColour = grey;
  }
}

void bricks() {
  fill(houseSelectedColour);
  rect(random(0, 130), random(-150, -10), 20, 10);
}

void door() {
  translate(random(10, 100), -75);
  fill(door);
  rect(0, 0, 40, 75);
  handle();
}

void handle() {
  fill(black);
  circle(30, 40, 10);
}
