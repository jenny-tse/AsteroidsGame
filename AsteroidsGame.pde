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
