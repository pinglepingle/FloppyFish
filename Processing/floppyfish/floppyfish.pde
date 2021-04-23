PImage fish;
PImage startPage;
int gameState = 1;

int buttonX, buttonY; //position of start button
int buttonHeight = 90;
int buttonWidth = 300;
color buttonColor;
boolean startOver = false;


void setup() {
  size(1000, 700);
  fish = loadImage("clown-fish.png");
  startPage = loadImage("startPage.png");
  buttonColor = color(0, 137, 214);
  fill(buttonColor);
  noStroke();
  buttonX = 350;
  buttonY = 305;
}

void draw() {
  if(gameState == 0) {
    background(0);
  }
  else {
    startPage.resize(1000, 700);
    background(startPage); 
    rect(buttonX, buttonY, buttonWidth, buttonHeight, 7);
  } 
}

  void mouseClicked() {
  if (overStart(buttonX, buttonY, buttonWidth, buttonHeight)) {
    gameState = 0;
  }
 }
 
 boolean overStart(int x, int y, int width, int height)  {
  if (mouseX >= x && mouseX <= x+width && 
      mouseY >= y && mouseY <= y+height) {
    return true;
  } else {
    return false;
  }
}
