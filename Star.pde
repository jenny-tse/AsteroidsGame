Star[] kylieC=new Star[1000];
class Star{
  private int myX, myY,mySize,myColor;
  public Star(){
    myX=(int)(Math.random()*1001);
    myY=(int)(Math.random()*1001);
    mySize=(int)(Math.random()*6);
  }
  public void show(){
    noStroke();
    fill((int)(Math.random()*256+187),(int)(Math.random()*256+187),(int)(Math.random()*256+187));
    ellipse(myX,myY,mySize,mySize);
  }
}
