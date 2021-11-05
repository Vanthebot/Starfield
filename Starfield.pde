class Particle
{
  double myX, myY, myAngle, mySpeed;
  int myColor;
  Particle()
  {
    myX = 150.0;
    myY = 150.0;
    myColor = color(255,255,255);
    myAngle = Math.random()*2*Math.PI;
    mySpeed = Math.random()*10 + 1;
  }
  void move ()
  {
    myX = myX + Math.cos(myAngle) * mySpeed;
      if (myX > 300)
        myX = 150.0;
    myY = myY + Math.sin(myAngle) * mySpeed;
      if (myY > 300)
        myY = 150.0;
  }
  void show()
  {
    fill(myColor);
    ellipse((float)myX,(float)myY,5,5);
  }
}
Particle [] star = new Particle[500];
void setup()
{
  size(300,300);
  for (int i = 0; i < star.length; i++)
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
