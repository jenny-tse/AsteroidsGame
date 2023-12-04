Spaceship kylie=new Spaceship();
class Spaceship extends Floater{
  public Spaceship(){
    corners=4;
    xCorners=new int[corners];
    yCorners=new int[corners];
    xCorners[0]=-8;
    yCorners[0]=-8;
    xCorners[1]=16;
    yCorners[1]=0;
    xCorners[2]=-9;
    yCorners[2]=9;
    xCorners[3]=-2;
    yCorners[3]=0;
    myColor=color(255,255,255);
    myCenterX=50;
    myCenterY=50;
    myXspeed=0;
    myYspeed=0;
    myPointDirection=0;
    
  }
  public boolean collidesWith(Asteroid asteroid) {
  float distance = dist((float)myCenterX, (float)myCenterY, (float)asteroid.myCenterX, (float)asteroid.myCenterY);
  return distance < 20;
}
 }
