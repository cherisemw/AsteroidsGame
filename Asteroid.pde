class Asteroid extends Floater {
  private double rotSpeed;
  
  public Asteroid(){
    corners = 5;
    myCenterX = (int)((Math.random())*500);
    myCenterY = (int)((Math.random())*500);
    xCorners = new int[corners];
    yCorners = new int[corners];
    xCorners[0] = -24;
    yCorners[0] = 18;   
    xCorners[1] = -12;
    yCorners[1] = 30;   
    xCorners[2] = 30;
    yCorners[2] = 24;   
    xCorners[3] = 18;
    yCorners[3] = -18;   
    xCorners[4] = -9;
    yCorners[4] = -9;   
    myColor = 100;   
    myXspeed = (Math.random()*2)+1;
    myYspeed = (Math.random()*2)+1;
    myPointDirection = (Math.random()*6)+1;
    rotSpeed = (Math.random()*4)+1;
  }
  
  public void move(){
    turn(rotSpeed);
    super.move();
  }
  
  public double getX(){
    return myCenterX;
  }
  
  public double getY(){
    return myCenterY;
  }
}
