class Asteroid extends Floater
{
  private int rotateSpeed;
  public Asteroid(){
    corners=6;
    rotateSpeed = (int)(Math.random() * 3) - 1;
    corners = 7;
    xCorners = new int[]{-11,7,13,6,-11,-5,-1};
    yCorners = new int[]{-8,-8,0,10,8,0,4};
    myColor = color((int)(Math.random()*30)+100);
    myCenterX = (float)(Math.random() * 800); 
    myCenterY = (float)(Math.random() * 800);
    myXspeed = Math.random()*2-1;
    myYspeed = Math.random()*2-1;
    myPointDirection = (Math.random() * 360);
}
public void move(){
  turn(rotateSpeed);
  super.move();
}

  public float getX(){
    return (float) myCenterX;
  }
  public float getY(){
    return (float) myCenterY;
  }

}
