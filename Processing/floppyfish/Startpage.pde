class Startpage implements Drawable {

  PImage startpage = loadImage("startPage.png");
  StartButton startButton =new StartButton();
  
  public Startpage() {
     
  }
  
  void drawMe() {
     startpage.resize(1000, 700);
     background(startpage); 
     startButton = new StartButton();
     startButton.drawMe();
     //startButton.mousePressed();;   }     
  }
}
