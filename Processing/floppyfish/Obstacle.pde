class Obstacle implements Drawable {

  int xPos, yPos;
  int h, w;
  color obstColor;
  
  int maxWidth = 75;
  int maxHeight = 600;
  
  public Obstacle(int xPos_, int yPos_) {
    xPos = xPos_;
    yPos = yPos_; // Either 1 or -1  => up or down; 0 random pos; 
    h = int(random(150, maxHeight));  // Height of Obstacle
    w = int(random(75, maxWidth));    // Width of Obstacle
  }
  
  void drawMe() {
    xPos -= 2;
    obstColor = color(0, 137, 214);
    fill(obstColor);
    rect(xPos, yPos, w, h, 0, 0, 10, 10);
  }
}
