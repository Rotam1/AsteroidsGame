class Star //note that this class does NOT extend Floater
{
  private float myX,myY,myDiameter;
  Star (){
    myX = (float) Math.random()*800.0;
    myY =(float) Math.random()*800.0;
    myDiameter=1 + (float) Math.random()*5.0;
}
public void show() {
  stroke (0,0,0);
  fill (255,255,255);
  ellipse(myX,myY,myDiameter, myDiameter);
}
}
