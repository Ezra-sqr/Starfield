Particle [] quasi;
void setup()
{
  size(500, 500);
  noStroke();
  background(0);
  quasi= new Particle [250];
  for (int i=0; i<220; i++) {
    quasi [i]=new Particle();
  }
    for (int i=220; i<quasi.length; i++) {
    quasi [i]=new OddballParticle();
  }
}

void draw()
{
  for (int i=0; i<quasi.length; i++) {
    quasi[i].show();
    quasi [i].move();
  }
  fill(0,0,0,40);
    rect(0,0,500,500);
}
void mousePressed()
{
 for (int i=0; i<quasi.length; i++){
  quasi[i].myX=mouseX;
  quasi[i].myY=mouseY;
 }
   fill(0,0,0);
    rect(0,0,500,500);
  redraw();
}
  class Particle
  {
    int mySize; 
    double myX, myY, speed, angle, Color;
    Particle() {
      Color=color(150,150,160+(int)(70*Math.random()));
      myX=250;
      myY=250;
      angle= 2*Math.PI*Math.random();
      speed= 10*Math.random()+1;
      mySize=9;
    }
    void show() {
      fill((int)Color);
     ellipse((int)myX,(int)myY, mySize,mySize);
    }
    void move() {
      myX=myX+(speed*Math.cos(angle));
      myY=myY+(speed*Math.sin(angle));
    }
  }
 class OddballParticle extends Particle //inherits from Particle
  {
  OddballParticle() {
      Color=0;
       myX=250;
      myY=250;
      angle= 2*Math.PI*Math.random();
      speed= 25*Math.random()+1;
      mySize=20;
  }
   void move() { 
     myX=myX+(speed*Math.cos(angle));
      myY=myY+(speed*Math.sin(angle)); 
    Color=0;//color(50+(int)(130*Math.random()),50+(int)(100*Math.random()),50+(int)(170*Math.random()));

}
  }
