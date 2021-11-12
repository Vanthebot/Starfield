class Particle
{
  double myX, myY, myAngle, mySpeed, mySize;
  int myColor;
  Particle()
  {
    myX = 150.0;
    myY = 150.0;
    myColor = color((int)(Math.random()*256), (int)(Math.random()*256), (int)(Math.random()*256));
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*2 + 1;
    mySize = 5.0;
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
    ellipse((float)myX,(float)myY, (float)mySize, (float)mySize);
  }
}
class OddballParticle extends Particle 
{
  OddballParticle() 
  {
    myX = 0.0;
    myY = Math.random()*301;
    myColor = color(255);
    mySpeed = Math.random()*5 + 1;
    mySize = 10;
  }
  void move ()
  {
    myX = myX + mySpeed;
    if (myX > 300){
        myX = 0.0;
 
  }
  }
  void show()
  {
    noStroke();
    mySize = dist((float)300, (float)300, (float)myX, (float)myY) / 40;
    fill(myColor);
    rect((float)myX,(float)myY,(float)mySize,(float)mySize);
  }
}
Particle [] star = new Particle[100];

void setup () {
  size(300,300);
  for (int i = 0; i < 10; i++)
    star[i] = new OddballParticle();
  for (int i = 10; i < star.length; i++)
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
