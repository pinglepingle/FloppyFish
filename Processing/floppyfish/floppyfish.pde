import java.util.ArrayList;

Fish fish;
Startpage startpage;
Gamepage gamepage;
Obstacle obstacle;
//PImage rectangle; 
int gameState = 1; //1 is startpage, 0 when the game is being played
int x = -200, y; 

//vy = 0; //position of the background and fish, as well as speed 

int[] wx= new int[3]; //x-positions for the obsticles (three obsicles visable)
int[] wy= new int[3]; //y-positions for the obsticles (three obsicles visable)

ArrayList<Drawable> graphicObjects = new ArrayList<Drawable>();
ArrayList<Movable> objects = new ArrayList<Movable>();

void setup() {
  size(1000, 700);
  
  objects.add(fish); //how to do?
  graphicObjects.add(fish); 
  
  startpage = new Startpage();
  gamepage = new Gamepage();
  fish = new Fish(width/3, y); 
  obstacle = new Obstacle((3*width)/4, y);
}

void draw() {
  if(gameState == 0) {
    gamepage.drawMe();
    fish.drawMe();
    obstacle.drawMe();
    
    /*for(int i = 0; i < 3; i++){
      image(rectangle, wx[i], wy[i] - (rectangle.height/2-50)); //help with the loop. We try to place the rectangles in the right spot. 
      image(rectangle, wx[i], wy[i] + (rectangle.height/2+350));
      if(wx[i] < -100){
        //rectangle.resize(100,(int)random(200,500));
        wy[i]=0;
        //wy[i] = (int)random(200,height-200);
        wx[i] = width;
      }*/
      //wx[i]-=2;
      
      // objects.get(1).drawMe();
      // objects.get(1).moveMe();
   // }
  }
  else {
    startpage.drawMe();
  } 
}

void mousePressed() {
    //vy -= 20; //Fish jump
    if (startpage.startButton.overStart()) {
      if(gameState == 1){
      /*wx[0] = 1000; //Start positions of the rectanlges. Is this really correct? 
      wy[0] = 0;
      wx[1] = 700;
      wy[1] = 0;
      wx[2] = 400;
      wy[2] = 0;
      x=0;
      y=height/2;*/
      gameState = 0;
      }
    }
}
