ArrayList<Asteroid> kyliechu = new ArrayList<Asteroid>();
public void setup() {
  smooth(8);
  size(800, 800);
  frameRate(50);

  for (int i = 0; i < kylieC.length; i++) {
    kylieC[i] = new Star();
  }
  kylie = new Spaceship();
  kyliechu = new ArrayList<Asteroid>();

  for (int i = 0; i < 20; i++) {
    Asteroid kchu = new Asteroid(); 
    kyliechu.add(kchu);
  }
}

public void draw() {
  background(0);
  for (int i = 0; i < kylieC.length; i++) {
    kylieC[i].show();
  }
  kylie.move();
  kylie.show();
for (int i = kyliechu.size() - 1; i >= 0; i--) {
    Asteroid asteroid = kyliechu.get(i);

    asteroid.turn(2);
    asteroid.move();
    asteroid.show();
    if (kylie.collidesWith(asteroid)) {
      kyliechu.remove(i);
    }
  }
}
public void keyPressed() {
  if (key == 'h') {
    kylie.myPointDirection = (int)(Math.random() * 361);
    kylie.myCenterX = (int)(Math.random() * 801);
    kylie.myCenterY = (int)(Math.random() * 801);
    kylie.myXspeed = 0;
    kylie.myYspeed = 0;
  }
  if (key == 'w') {
    kylie.accelerate(2); 
  }
  if (key == 's') {
    kylie.accelerate(-2); 
  }
  if (key == 'd') {
    kylie.turn(5);
  }
  if (key == 'a') {
    kylie.turn(-5);
  }
}

public void keyReleased() {
  if (key == 'w' || key == 's') {
    kylie.myXspeed-=1;
    kylie.myYspeed-=1;
    if(kylie.myXspeed<0 ||kylie.myXspeed>0){
    kylie.myXspeed=0;
    }
    if(kylie.myYspeed<0 ||kylie.myYspeed>0){
    kylie.myYspeed=0;
    }
  }
}

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
   rotSpeed = (float) (Math.random() * 6 - 3); 
   moveSpeed = (float) (Math.random() * 3); 
   myCenterX = (float) (Math.random() * width);
   myCenterY = (float) (Math.random() * height);
   myPointDirection = (float) (Math.random() * 360);
   double randomSpeed = Math.random() * 3; 
   myXspeed = (float) (randomSpeed * Math.cos(Math.toRadians(myPointDirection)));
   myYspeed = (float) (randomSpeed * Math.sin(Math.toRadians(myPointDirection)));
  }

  public void move() {
    myCenterX += moveSpeed;
    myCenterY += moveSpeed;
    turn(rotSpeed);
  }

  public void show() {
    noFill();
    super.show();
  }
}
