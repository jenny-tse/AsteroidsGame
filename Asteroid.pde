public class Asteroid extends Floater {
  private double rotSpeed;
  private double moveSpeed;

public Asteroid() {
   corners = 6;
   xCorners = new int[corners];
   yCorners = new int[corners];
   xCorners[0] = -11;
   yCorners[0] = -8;
   xCorners[1] = 7;
   yCorners[1] = -8;
   xCorners[2] = 13;
   yCorners[2] = 0;
   xCorners[3] = 6;
   yCorners[3] = 10;
   xCorners[4] = -11;
   yCorners[4] = 8;
   xCorners[5] = -5;
   yCorners[5] = 0;
   myColor = color(255);
   rotSpeed = (Math.random() * 6 - 3); 
   moveSpeed =(Math.random() * 3); 
   myCenterX =(int)(Math.random() * width);
   myCenterY =(int)(Math.random() * height);
   myXspeed = (Math.random()*2)-1;
   myYspeed = (Math.random()*2)-1;
  }

  public void move() {
    turn(rotSpeed);
    super.move();
  }

  public void show() {
    noFill();
    super.show();
  }
}
