class Fish implements Drawable, Movable {

  PImage fish = loadImage("clown-fish.png");
  int xPos, yPos;
  float vy = 0;
  
  public Fish(int xPos_, int yPos_) {
     
    xPos = xPos_;
    yPos = yPos_; // Either 1 or -1  => up or down; 0 random pos; 
  }
  
  void moveMe() {
    fishSwim();
  }
  
  void drawMe() {
     image(fish, xPos, yPos);
     fish.resize(75, 75);
     vy += 0.4;
     yPos += int(vy);
     fishSwim();
  }
  
  void fishSwim() {
    if(mousePressed) {
     vy -= 2; //Fish jump
    }
  }
}
