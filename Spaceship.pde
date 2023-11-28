class Spaceship extends Floater  
{   
  public Spaceship(){
    corners = 4;
    xCorners = new int[corners];
    yCorners = new int[corners];
    myColor = 250;
    myCenterX = 250;
    myCenterY = 250;
    xCorners[0] = -8;
    yCorners[0] = -8;
    xCorners[1] = 16;
    yCorners[1] = 0;
    xCorners[2] = -8;
    yCorners[2] = 8;
    xCorners[3] = 0;
    yCorners[3] = 0;
    myXspeed = 2;
    myYspeed = 0;
    myPointDirection = 3;
  }
  
  public void hyperspace(){
    myCenterX += (int)((Math.random())*150);
    myCenterY += (int)((Math.random())*150);
  }
}
