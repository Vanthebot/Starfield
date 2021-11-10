class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor, mySize;
  Particle()
  {
    myX = 150.0;
    myY = 150.0;
    myColor = color(255,255,255);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*5 + 1;
    mySize = 5;
  }
  void move ()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
    myY = myY + Math.sin(myAngle) * mySpeed;
    if (myX > 300 || myX < 0){
        myX = 150.0;
        myY = 150.0;
    }
    if (myY > 300 || myY < 0){
        myY = 150.0;
        myX = 150.0;
    }
    
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,mySize,mySize);
  }
}
class OddballParticle extends Particle 
{
  OddballParticle() 
  {
    myX = 150.0;
    myY = 150.0;
    myColor = color((int)Math.random()*256, (int)Math.random()*256, (int)Math.random()*256);
    mySpeed = Math.random()*10 + 1;
    mySize = 10;
  }
  void move ()
  {
    myX = myX + mySpeed;
    myY = myY + mySpeed;
    if (myX > 200 || myX < 100)
        myX = 150.0;
        myY = 150.0;
    if (myY > 200 || myY < 100)
        myY = 150.0;
        myY = 150.0;
  }
  void show()
  {
    fill(myColor);
    rect((float)myX,(float)myY,mySize,mySize);
  }
}
Particle [] star = new Particle[100];

void setup () {
  size(300,300);
  //for (int i = 0; i < 10; i++)
    star[0] = new OddballParticle();
  for (int i = 1; i < star.length; i++)
    star[i] = new Particle();
}

void draw()
{
  background(0);
  for (int i = 0; i < star.length; i++)
  {
    star[i].move();
    star[i].show();
  }
}
