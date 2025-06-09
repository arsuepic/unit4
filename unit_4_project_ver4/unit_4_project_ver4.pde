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

float grassHeight = random(225, 575);

// End variable setup =============================================================================================

void setup () { // Start setup() ==================================================================================
  size(1200, 800);
  background(sky);

  grass(600);
  sun((int)random(2, 4));
  flower((int)random(40, 60));
  house((int)random(3, 5), (int)random(25, 50));
} // End setup() ==================================================================================================

void grass(int x) { // Start grass() ===================================================================================
  noStroke();
  fill(lawn);
  rect(0, height-grassHeight, width, grassHeight);
  int i = 0;
  fill(grass);

  while (i < x) {
    float r = random(-0.2, 0.2);

    pushMatrix();
    translate(random(0, 1200), random(800-grassHeight, 800));
    rotate(r);
    triangle(-6, 15, 0, -15, 6, 15);
    i += 1;
    popMatrix();
  }
} // End grass() ==================================================================================================

void sun(int x) { // Start sun() ==================================================================================

  int j = 0;

  while (j < x) {

    pushMatrix();

    scale(0.9);
    translate(random(0, 1200), random(0, 200));
    noStroke();
    fill(sun);
    circle(0, 0, 100);
    rotate(random(0, 2*PI));
    int i = 0;
    float l = int(random(7, 14));

    while (i < l) {
      triangle(-10, -55, 10, -55, 0, -90);
      rotate(2*PI/l);
      i += 1;
    }

    popMatrix();

    j += 1;
  }
} // End sun() ====================================================================================================

void flower(int x) { // Start flower() ============================================================================
  pushMatrix();
  stroke(black);
  strokeWeight(2);

  int i = 0;
  int j = 0;

  while (i < x) {
    float l = int(random(5, 9));
    float r = random(0, 2*PI);
    float c = int(random(0, 4));
    color selectedColour;
    float s = random(1, 2);

    pushMatrix();

    translate(random(0, 1200), random(800-grassHeight, 800));
    rotate(r);
    scale(s);

    while (j < l) {

      if (c == 1) {
        selectedColour = white;
      } else if (c == 2) {
        selectedColour = lavendar;
      } else if (c == 3) {
        selectedColour = purple;
      } else {
        selectedColour = pink;
      }

      rotate(2*PI/l);
      fill(selectedColour);
      ellipse(0, 10, random(12, 17), random(20, 30));
      j += 1;
    }

    j = 0;

    fill(yellow);
    circle(0, 0, 20);
    i += 1;

    scale(1/s);

    popMatrix();
  }

  popMatrix();
} // End flower() =================================================================================================

void house(int x, int y) { // Start house() ==============================================================================
  stroke(black);
  strokeWeight(3);
  int i = 0;
  int j = 0;
  color selectedColour;

  while (i < x) {
    pushMatrix();

    translate(random(0, 1050), random(800-grassHeight, 800));

    fill(wall);
    rect(0, -150, 150, 150);

    fill(roof);
    triangle(0, -150, 150, -150, random(0, 150), random(-200, -160));

    while (j < y) {
      float c = int(random(0, 4));

      if (c == 1) {
        selectedColour = white;
      } else if (c == 2) {
        selectedColour = roof;
      } else if (c == 3) {
        selectedColour = door;
      } else {
        selectedColour = grey;
      }

      fill(selectedColour);
      rect(random(0, 130), random(-150, -10), 20, 10);
      j += 1;
    }

    j = 0;

    pushMatrix();
    translate(random(10, 100), -75);

    fill(door);
    rect(0, 0, 40, 75);
    fill(black);
    circle(30, 40, 10);

    popMatrix();

    popMatrix();
    i += 1;
  }
}// End house() ===================================================================================================
