void setup() {
  size(500,500);
  background(255);
  strokeWeight(3);
  
  int i = 0;
  while (i < 500) {
    line(i,0,i,500);
    i += 20;
  }
}
