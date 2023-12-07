class Bullet extends Floater {
  public Bullet(Spaceship theShip) {
   myColor = color(194, 252, 252);
   myCenterX = theShip.myCenterX;
   myCenterY = theShip.myCenterY;
   myPointDirection = theShip.myPointDirection;
   myXspeed = 5 * Math.cos((Math.PI/180)*myPointDirection);
   myYspeed = 5 * Math.sin((Math.PI/180)*myPointDirection);
  }
 public boolean collidesWith(Asteroid asteroid) {
    float distance = dist((float) myCenterX, (float) myCenterY, (float) asteroid.myCenterX, (float) asteroid.myCenterY);
    return distance < 15;
  }
 public void show() {
    noStroke();
    fill(myColor);
    ellipse((float) myCenterX, (float) myCenterY, 10, 10);
  }
}
