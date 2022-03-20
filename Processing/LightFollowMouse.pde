// It has a bug offset of the column position, so the mouse is not align to it. 
// I don't know how to fix it.

int numberOfLED = 100;

LightBud lightBud[] = new LightBud[numberOfLED];

void setup(){
  
  size(1000, 500);
  
  float posX = 0;
  float posY = 0;
  float widthX = width/numberOfLED;
  
  for (int i = 0; i < lightBud.length; i ++){
    lightBud[i] = new LightBud(posX, posY, widthX, height);
      posX += widthX;
  }
}

void draw(){
  
  background(255);
  
  for (int i = 0; i < lightBud.length; i ++){
    lightBud[i].display();
    lightBud[i].changeLightTension(lightBud[i].isHovered(mouseX));
  }
}
