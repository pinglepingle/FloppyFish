class Gamepage implements Drawable {

  PImage gamepage = loadImage("movingBg.png");
  
  public Gamepage() {
     
  }
  
  void drawMe() {
     imageMode(CORNER); 
     gamepage.resize(1000, 700);
     image(gamepage, x, 0);
     image(gamepage, x+gamepage.width, 0);
     x -= 2; //Makes backgound move
     if (x == -1000) x = 0; //resets the background, makes it loop
  }
}
