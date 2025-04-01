//Aaron Su
//Programming 11
//2-4


// Start variables declaration ====================================================================================

  PImage tea;
  boolean teaOn;

  // Colour palette
    color white        = #FFFFFF;
    color black        = #000000;
    color UILightGrey  = #C8C8C8;
    color UIMediumGrey = #7D7D7D;
    color UIDarkGrey   = #323232;
    color red          = #FF0000;
    color orange       = #FFA500;
    color yellow       = #FFFF00;
    color green        = #00FF00;
    color blue         = #0000FF;

  color selectedColour;
  float thickness;
  float sliderX = 750;

  //Toggles
    boolean toggleRed = true;
    boolean toggleOrange = false;
    boolean toggleYellow = false;
    boolean toggleGreen = false;
    boolean toggleBlue = false;
    boolean toggleWhite = false;
    boolean toggleBlack = false;
    boolean toggleClear = false;
    boolean toggleTea = false;
    
  boolean preset = false;
  
  float r;
  float g;
  float b;
  
  float sliderRX = 420;
  float sliderGX = 720;
  float sliderBX = 1020;

// End variables declaration ======================================================================================

void button(color colour, int w, int h, int x, int y, boolean currentToggle) { //Start button =====================
  
  strokeWeight(3);
  if (mouseX > x && mouseX < (x+w) && mouseY > y && mouseY < (y+h)) {
    stroke(white);
  } else {
    stroke(UIMediumGrey);
  }
  fill(colour);
  rect(x,y,w,h);
  
  if (currentToggle == true) {
    noStroke();
    fill(UILightGrey);
    ellipse(x+25,y+75,20,20);
  }

} //End button ====================================================================================================

void controlSlider() { // Start controlSlider =====================================================================
  
  if (mouseX < 900 && mouseX > 600 && mouseY < 100 && mouseY > 50) {
    sliderX = mouseX;
  }
  
} // Start controlSlider ==========================================================================================

void setup() { // Start setup =====================================================================================

  size(1400,870);
  background(white);

  selectedColour = red;
  tea = loadImage("tea.png");


} // End setup ====================================================================================================

void draw() { // Start draw =======================================================================================

  thickness = map(sliderX,600,900,2,20);

  //UI setup
    noStroke();
    fill(UIDarkGrey);
    rect(0,0,1400,150);
    rect(0,800,1400,870);

    
    
    //Tea button
      if (toggleTea == true) {
        stroke(red);
        strokeWeight(6);
      } else {
        noStroke();
      }
      
      if (dist(1200,75,mouseX,mouseY) < 50) {
        
        fill(yellow);
        
      } else {
        
        fill(white);
        
      }
      circle(1200,75,100);
      image(tea,1127,-8,150,150);
    
    
    //Clear Button
      strokeWeight(3);
      if (mouseX > 1020 && mouseX < 1120 && mouseY > 50 && mouseY < 100) {
        stroke(white);
      } else {
        stroke(UIMediumGrey);
      }
      fill(UIMediumGrey);
      rect(1020,50,100,50);
      fill(white);
      textSize(30);
      text("CLEAR",1030,85);
      
    //Save Button
      strokeWeight(3);
      if (mouseX > 1275 && mouseX < 1375 && mouseY > 20 && mouseY < 65) {
        stroke(white);
      } else {
        stroke(UIMediumGrey);
      }
      fill(UIMediumGrey);
      rect(1275,20,100,45);
      fill(white);
      textSize(30);
      text("SAVE",1293,53);
      
    //Load Button
      strokeWeight(3);
      if (mouseX > 1275 && mouseX < 1375 && mouseY > 85 && mouseY < 130) {
        stroke(white);
      } else {
        stroke(UIMediumGrey);
      }
      fill(UIMediumGrey);
      rect(1275,85,100,45);
      fill(white);
      textSize(30);
      text("LOAD",1290,120);
    
    //Customize colour button
    
      strokeWeight(3);
      if (mouseX > 20 && mouseX < 260 && mouseY > 810 && mouseY < 855) {
        stroke(white);
      } else {
        stroke(UIMediumGrey);
      }
      if (preset == true) {
        fill(red);
      } else {
      fill(UIMediumGrey);
      }
      rect(20,810,240,45);
      fill(white);
      textSize(30);
      text("Customize Colour",30,840);
    
    //Buttons
      button(red,50,100,30,25,toggleRed);
      button(orange,50,100,105,25,toggleOrange);
      button(yellow,50,100,180,25,toggleYellow);
      button(green,50,100,255,25,toggleGreen);
      button(blue,50,100,330,25,toggleBlue);
      button(white,50,100,405,25,toggleWhite);
      button(black,50,100,480,25,toggleBlack);
    
    //Slider
    
      if (mouseX < 900 && mouseX > 600 && mouseY < 100 && mouseY > 50) {
      
        stroke(UILightGrey);
        fill(UIMediumGrey);

      } else {
        
        stroke(UIMediumGrey);
        fill(UILightGrey);

      }
      
      strokeWeight(10);
      line(600,75,900,75);
      
      strokeWeight(5);
      circle(sliderX, 75, 30);
      
    //Slider red
    if (mouseX < 520 && mouseX > 320 && mouseY < 850 && mouseY > 815) {
      
        stroke(UILightGrey);
        fill(UIMediumGrey);

      } else {
        
        stroke(UIMediumGrey);
        fill(UILightGrey);

      }
      
      text("R:",280,845);
      strokeWeight(10);
      line(320,835,520,835);
      
      strokeWeight(5);
      circle(sliderRX, 835, 20);
      
      r = map(sliderRX,320,520,0,255);
      
      
      //
      
      if (mouseX < 820 && mouseX > 620 && mouseY < 850 && mouseY > 815) {
      
        stroke(UILightGrey);
        fill(UIMediumGrey);

      } else {
        
        stroke(UIMediumGrey);
        fill(UILightGrey);

      }
      
      text("G:",580,845);
      strokeWeight(10);
      line(620,835,820,835);
      
      strokeWeight(5);
      circle(sliderGX, 835, 20);
      
      g = map(sliderGX,620,820,0,255);
      
      //
      
      if (mouseX < 1120 && mouseX > 920 && mouseY < 850 && mouseY > 815) {
      
        stroke(UILightGrey);
        fill(UIMediumGrey);

      } else {
        
        stroke(UIMediumGrey);
        fill(UILightGrey);

      }
      
      text("B:",880,845);
      strokeWeight(10);
      line(920,835,1120,835);
      
      strokeWeight(5);
      circle(sliderBX, 835, 20);
      
      b = map(sliderBX,920,1120,0,255);
      
      
      //
      
      fill(white);
      if (preset == false) {
        text("OFF",1225,845);
      } else {
        text("ON",1225,845);
      }
      
    //Stroke weight indicator
      
      if (toggleTea == true) {
        
        image(tea,(950-(thickness*6)),(75-(thickness*6.5)),thickness*12,thickness*12);
        
      } else if (preset == true) {
      
        stroke(r,g,b);
        fill(UIDarkGrey);
        strokeWeight(thickness);
        circle(950,75,30);
        
      } else {
        stroke(selectedColour);
        fill(UIDarkGrey);
        strokeWeight(thickness);
        circle(950,75,30);
      }
      
} // End draw =====================================================================================================

void toggleReset() { // Start toggleReset =========================================================================

  toggleRed = false;
  toggleOrange = false;
  toggleYellow = false;
  toggleGreen = false;
  toggleBlue = false;
  toggleWhite = false;
  toggleBlack = false;
  toggleTea = false;
  preset = false;

} // End toggleReset ==============================================================================================

void mouseReleased() { // Start mouseReleased =====================================================================

  //Red Button
    if (mouseX > 30 && mouseX < 80 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleRed = true;
      selectedColour = red;
    }
    
  //Orange Button
    if (mouseX > 105 && mouseX < 155 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleOrange = true;
      selectedColour = orange;
    }

  //Yellow Button
    if (mouseX > 180 && mouseX < 230 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleYellow = true;
      selectedColour = yellow;
    }
    
  //Green Button
    if (mouseX > 255 && mouseX < 305 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleGreen = true;
      selectedColour = green;
    }
    
  //Blue Button
    if (mouseX > 330 && mouseX < 380 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlue = true;
      selectedColour = blue;
    }
    
  //White Button
    if (mouseX > 405 && mouseX < 455 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleWhite = true;
      selectedColour = white;
    }
    
  //Black Button
    if (mouseX > 480 && mouseX < 530 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlack = true;
      selectedColour = black;
    }
    
  //Clear Button
  if (mouseX > 1020 && mouseX < 1120 && mouseY > 50 && mouseY < 100) {
    
    noStroke();
    fill(white);
    rect(0,150,1400,650);
    
  }
  
  //Tea Button
    if (dist(1200,75,mouseX,mouseY) < 50) {
      toggleReset();
      toggleTea = true;
      selectedColour = UIDarkGrey;
    }

} // End mouseReleased ============================================================================================

void mouseDragged() { // Start mouseDragged =======================================================================
  
  if (mouseY > 150 && mouseY < 800) {
    
    if (toggleTea == false) {
      
      if (preset == false){
      
        stroke(selectedColour);
        strokeWeight(thickness);
        line(pmouseX,pmouseY,mouseX,mouseY);
    
      } else {
      
        stroke(r,g,b);
        strokeWeight(thickness);
        line(pmouseX,pmouseY,mouseX,mouseY);
        
      }
    
    } else {
    
      image(tea,(mouseX-(thickness*6)),(mouseY-(thickness*6.5)),thickness*12,thickness*12);
      
    }
    
  }
  
  controlSlider();
  
  if (mouseX < 520 && mouseX > 320 && mouseY < 850 && mouseY > 815) {
    sliderRX = mouseX;
  }
  
  if (mouseX < 820 && mouseX > 620 && mouseY < 850 && mouseY > 815) {
    sliderGX = mouseX;
  }
  
  if (mouseX < 1120 && mouseX > 920 && mouseY < 850 && mouseY > 815) {
    sliderBX = mouseX;
  }

} // End mouseDragged =============================================================================================

void mousePressed() { // Start mousePressed =======================================================================

  controlSlider();
  
  
  //Red Button
    if (mouseX > 30 && mouseX < 80 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleRed = true;
      selectedColour = red;
    }
    
  //Orange Button
    if (mouseX > 105 && mouseX < 155 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleOrange = true;
      selectedColour = orange;
    }

  //Yellow Button
    if (mouseX > 180 && mouseX < 230 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleYellow = true;
      selectedColour = yellow;
    }
    
  //Green Button
    if (mouseX > 255 && mouseX < 305 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleGreen = true;
      selectedColour = green;
    }
    
  //Blue Button
    if (mouseX > 330 && mouseX < 380 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlue = true;
      selectedColour = blue;
    }
    
  //White Button
    if (mouseX > 405 && mouseX < 455 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleWhite = true;
      selectedColour = white;
    }
    
  //Black Button
    if (mouseX > 480 && mouseX < 530 && mouseY > 25 && mouseY < 125 ) {
      toggleReset();
      toggleBlack = true;
      selectedColour = black;
    }
    
  //Clear Button
  if (mouseX > 1020 && mouseX < 1120 && mouseY > 50 && mouseY < 100) {
    
    noStroke();
    fill(white);
    rect(0,150,1400,650);
    
  }
  
  //Tea Button
    if (dist(1200,75,mouseX,mouseY) < 50) {
      toggleReset();
      toggleTea = true;
      selectedColour = UIDarkGrey;
    }  
    
   //Save Button
     if (mouseX > 1275 && mouseX < 1375 && mouseY > 20 && mouseY < 65) {
       selectOutput("Choose a name for your new image file","saveImage");
     }
  
   //Load Button
     if (mouseX > 1275 && mouseX < 1375 && mouseY > 85 && mouseY < 130) {
       selectInput("Pick an image to load","openImage");
     }
     
   //Customize colour button
     if (mouseX > 20 && mouseX < 260 && mouseY > 810 && mouseY < 855) {
       toggleReset();
       preset = true;
     }

  if (mouseX < 520 && mouseX > 320 && mouseY < 850 && mouseY > 815) {
    sliderRX = mouseX;
  }
  
  if (mouseX < 820 && mouseX > 620 && mouseY < 850 && mouseY > 815) {
    sliderGX = mouseX;
  }
  
  if (mouseX < 1120 && mouseX > 920 && mouseY < 850 && mouseY > 815) {
    sliderBX = mouseX;
  }

} // End mousePressed =============================================================================================

void saveImage(File f) { // Start saveImage =======================================================================

  if (f != null) {
    PImage canvas = get(0,150,1400,650);
    canvas.save(f.getAbsolutePath());
  }

} // End saveImage ================================================================================================

void openImage(File f) { // Start saveImage =======================================================================

  if (f != null) {
    int n = 0;
    while (n < 25) {
      PImage pic = loadImage(f.getPath());
      image(pic,0,150,1400,650);
      n = n + 1;
    }
  }

} // End saveImage ================================================================================================
