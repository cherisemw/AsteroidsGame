class Star //note that this class does NOT extend Floater
{
  private int myX, myY;
  public Star(){
    myX = 0;
    myY = 0;
  }
  
  public void coordinate(){
    myX += (int)((Math.random())*500);
    myY += (int)((Math.random())*500);
  }
  
  public void show(){
    noStroke();
    fill(255, 182, 193);
    beginShape();
    vertex(myX, myY+5);
    vertex(myX+3, myY);
    vertex(myX, myY-5);
    vertex(myX-3, myY);
    vertex(myX, myY+5);
    endShape();
  }
}
