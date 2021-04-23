PImage fish;
PImage startPage;
PImage movingBg;
int gameState = 0;
int x = -200, y, vy = 0;

int buttonX, buttonY; //position of start button
int buttonHeight = 90;
int buttonWidth = 300;
color buttonColor;
boolean startOver = false;


void setup() {
  size(1000, 700);
  fish = loadImage("clown-fish.png");
  startPage = loadImage("startPage.png");
  movingBg = loadImage("movingBg.png");
  noStroke();
  buttonX = 350;
  buttonY = 305;
}

void draw() {
  if(gameState == 0) {
    imageMode(CORNER);
    movingBg.resize(1000, 700);
    image(movingBg, x, 0);
    image(movingBg, x+movingBg.width, 0);
    image(fish, width/5, y);
    fish.resize(100, 100);
    x -= 2;
    vy += 1;
    y += vy;
    //background(startPage);
  }
  else {
    startPage.resize(1000, 700);
    background(startPage); 
    buttonColor = color(0, 137, 214);
    fill(buttonColor);
    rect(buttonX, buttonY, buttonWidth, buttonHeight, 7);
    textSize(45);
    fill(255);
    text("Start game", 385, 362);
  } 
}

void mousePressed() {
  vy -= 50;
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
