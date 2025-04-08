void setup() {
  size(500,500);
  background(255);
  strokeWeight(3);
  
  int i = 500;
  while (i > 0) {
    fill(random(0,255));
    circle(250,250,i);
    i -=20;
  }
}
