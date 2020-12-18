class Spaceship extends Floater  
{ 
  public Spaceship(){
   corners=4;  //the number of corners, a triangular floater has 3   
   xCorners= new int[] {-8,16,-8,-2};   
   yCorners= new int[] {  -8,0,8,0};
   myColor= color(1,220,1);   
   myCenterX=myCenterY=400; //holds center coordinates   
   myXspeed=myYspeed=0; //holds the speed of travel in the x and y directions   
   myPointDirection=0; //holds current direction the ship is pointing
}
public void hyperSpace () {
    myXspeed = 0;
    myYspeed = 0;
    myPointDirection = 0; 
    myCenterX = Math.random() * 800; 
    myCenterY = Math.random() * 800;
}
public void accelerate (double dAmount) {
  super.accelerate (dAmount);
}
public float getX(){
  return (float) myCenterX;
}
public float getY(){
  return (float) myCenterY;
}

public float getMyXspeed () {
  return (float) myXspeed;
}

public float getMyYspeed () {
  return (float) myYspeed;
}

public float getMyDirection () {
  return (float) myPointDirection;
}

}
