void setup() {
  size(500,500);
  background(255);
  strokeWeight(3);
  
  int i = 500;
  while (i > 0) {
    fill(random(0,255));
    rect((500-i)/2,(500-i)/2,i,i);
    i -=20;
  }
}
