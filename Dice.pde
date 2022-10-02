void setup() {
  noLoop();
  size(600, 600);
}
Die bob;
int numDots;
int black;
int white;
int ran;
void draw() {

  strokeWeight(1.5);
  background(150, 150, 150);
  for (int y = 25; y <= 500; y+= 35) {
    for (int x = 25; x <= 560; x+= 35) {
      bob = new Die(x, y);
      // bob.dots1();
      bob.show();
      ran = (int) (Math.random()*2);
      if (ran == 1) {
        stroke(0);
        black++;
      } else {
        stroke(255);
        white++;
      }
    }
  }
  fill(150, 150, 150);
  stroke(150, 150, 150);
  // rect(198, 198, 210, 140);
  fill(0, 0, 0);
  noStroke();
  ellipse(420, 557, 60, 60);
  fill(255, 255, 255);
  arc(420, 557, 60, 60, 0, (2*PI*white/224));

  textSize(30);
  textAlign(CENTER);
  fill(0);
  text("Number of Dots: " + numDots, 250, 565);
  textSize(20);
  textAlign(RIGHT);
  textSize(14);
  fill(255, 255, 255);
  text("Black", 436, 547);
  fill(0);
  text("White", 436, 575);
  System.out.println("Pip: " + numDots);
  System.out.println("black: " + black);
  System.out.println("white: " + white);
}
void mousePressed()
{
  redraw();
  numDots = 0;
  black = 1;
  white = 1;
}

class Die {

  int mySize, myX, myY, pips; // member variables
  Die(int x, int y) { // constructor
    // fancy initializer
    mySize = 30;
    myX = x;
    myY = y;
    dots1();
  }
  void dots1() { // member function
    fill(0, 0, 0);
    int ranNum = (int)((Math.random()*7)+1);
    if (ranNum == 1) {
      pips = 1;
      numDots+=1;
    } else if (ranNum == 2) {
      pips = 2;
      numDots+=2;
    } else if (ranNum == 3) {
      pips = 3;
      numDots+=3;
    } else if (ranNum == 4) {
      pips = 4;
      numDots+=4;
    } else if (ranNum == 5) {
      pips = 5;
      numDots+=5;
    } else { //(ranNum == 6)
      pips = 6;
      numDots+=6;
    }
  }
  void show() { // memember function

    fill(255*ran, 255*ran, 255*ran);
    rect(myX, myY, mySize, mySize, 7);
    if (ran == 1) {
      fill(0);
    } else {
      fill(255, 255, 255);
    }
    if (pips == 1) {
      ellipse(myX+(mySize/2), myY+(mySize/2), 5, 5);
    } else if (pips == 2) {
      ellipse(myX+(mySize/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize*3/4), myY+(mySize*3/4), 5, 5);
    } else if (pips == 3) {
      ellipse(myX+(mySize/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize*3/4), myY+(mySize*3/4), 5, 5);
      ellipse(myX+(mySize/2), myY+(mySize/2), 5, 5);
    } else if (pips == 4) {
      ellipse(myX+(mySize*3/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize/4), myY+(mySize*3/4), 5, 5);
      ellipse(myX+(mySize/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize*3/4), myY+(mySize*3/4), 5, 5);
    } else if (pips == 5) {
      ellipse(myX+(mySize*3/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize/4), myY+(mySize*3/4), 5, 5);
      ellipse(myX+(mySize/4), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize*3/4), myY+(mySize*3/4), 5, 5);
      ellipse(myX+(mySize/2), myY+(mySize/2), 5, 5);
    } else {
      ellipse(myX+(mySize/3), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize/3), myY+(mySize*2/4), 5, 5);
      ellipse(myX+(mySize/3), myY+(mySize*3/4), 5, 5);
      ellipse(myX+(mySize*2/3), myY+(mySize/4), 5, 5);
      ellipse(myX+(mySize*2/3), myY+(mySize*2/4), 5, 5);
      ellipse(myX+(mySize*2/3), myY+(mySize*3/4), 5, 5);
    }
  }
}// end of balloon class
