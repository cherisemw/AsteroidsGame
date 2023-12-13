Spaceship rocket = new Spaceship();
Star[] space = new Star[250];
ArrayList<Asteroid> theRocks = new ArrayList<Asteroid>();
ArrayList<Bullet> theBullets = new ArrayList<Bullet>();

public void setup() 
{
 size(500, 500);
 background(0);
 for (int i = 0; i < space.length; i++){
   space[i] = new Star();
   space[i].coordinate();
 }
 for (int j = 0; j < 5; j++){
   theRocks.add(new Asteroid()); 
 }
}

public void draw() 
{
  background(0);
  rocket.move();
  rocket.show();
  for(int i = 0; i < space.length; i++){
    space[i].show();
  }
  for (int j = 0; j < theRocks.size(); j++){
    theRocks.get(j).move();
    theRocks.get(j).show();
    float d = dist((float)rocket.myCenterX, (float)rocket.myCenterY, (float)theRocks.get(j).getX(), (float)theRocks.get(j).getY());
    if (d < 20){
      theRocks.remove(j);
    }
  }
  for (int k = 0; k < theBullets.size(); k++){
    theBullets.get(k).show();
    theBullets.get(k).move();
    for (int l = 0; l < theRocks.size(); l++){
      float distance = dist((float)theBullets.get(k).myCenterX, (float)theBullets.get(k).myCenterY, (float)theRocks.get(l).getX(), (float)theRocks.get(l).getY());
      if (distance < 15){
        theBullets.remove(k);
        theRocks.remove(l);
        break;
      }
    }
  }
}

public void keyPressed(){
  if (key == 'a'){
    rocket.turn((Math.random()*5)-5);
  }
  
  if (key == 'd'){
    rocket.turn((Math.random()*5)+1);
  }

  if (key == 'w'){
    rocket.accelerate((Math.random()*7)+1);
  }

  if (key == 's'){
    rocket.myXspeed = 0;
    rocket.myYspeed = 0;
    rocket.hyperspace();
    rocket.show();
  }
  if (key == 'r'){
     theBullets.add(new Bullet(rocket));
  }
}
