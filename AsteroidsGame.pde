public void setup(){
  size(800,800);
  for (int i=0;i<kylieC.length;i++){
    kylieC[i]=new Star();
    frameRate(50);
    smooth(8);
  }
}

public void draw(){
  background(0);
  kylie.move();
  kylie.show();
  for (int i=0;i<kylieC.length;i++){
      kylieC[i].show();
  }
}
public void keyPressed(){ //hyperspeed!!!
    if (key=='h'){
      kylie.myPointDirection=(int)(Math.random()*361);
      kylie.myCenterX=(int)(Math.random()*801);
      kylie.myCenterY=(int)(Math.random()*801);
      kylie.myXspeed=0;
      kylie.myYspeed=0;
    }
    if (key=='w'){
      kylie.myXspeed=kylie.myXspeed+2;
      kylie.myYspeed=kylie.myYspeed+2;
    }
    if (key=='s'){
      kylie.myXspeed=kylie.myXspeed-2;
      kylie.myYspeed=kylie.myYspeed-2;
    }
    if(key=='d'){
      kylie.myPointDirection=kylie.myPointDirection+10;
    }
}
