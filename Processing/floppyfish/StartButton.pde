class StartButton implements Drawable { 
  
int buttonX, buttonY; //position of start button
int buttonHeight = 90;
int buttonWidth = 300;
color buttonColor;
boolean startOver = false; //See if mouse is over start button
  
  public StartButton() {
     
  }
  
  void drawMe() {
    noStroke();
    buttonX = 350;
    buttonY = 305;
    buttonColor = color(0, 137, 214);
    fill(buttonColor);
    rect(buttonX, buttonY, buttonWidth, buttonHeight, 7);
    textSize(45);
    fill(255);
    text("Start game", 385, 362);
  }
  
   boolean overStart()  {
    if (mouseX >= x && mouseX <= x+width && 
        mouseY >= y && mouseY <= y+height) {
      return true;
    } else {
      return false;
  }
}

  /*void mousePressed() {
    if (overStart()) {
      if(gameState == 1){
          gameState = 0;
    }
  }
}*/
}
