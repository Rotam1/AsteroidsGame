//your variable declarations her
Spaceship spaceship;
Star[] stars;
ArrayList <Asteroid> asteroids = new ArrayList <Asteroid>();
ArrayList <Bullet> bulletList;
public void setup() 
{
  size(800,800);
  spaceship= new Spaceship();
  stars = new Star[5000];
  for (int i=0; i<stars.length;i++) {
    stars[i]=new Star();
  }
  for(int i = 0; i < 35; i++){
      asteroids.add(new Asteroid());
  }
  bulletList = new ArrayList <Bullet>();
}

public void draw() 
{
  background(0);
  
 for (int i=0; i<stars.length;i++) {
    stars[i].show();
 }
 for(int i = 0; i < asteroids.size(); i++) {
   if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), 
         spaceship.getX(), spaceship.getY()) < 10) {
     asteroids.remove(i);
     break;
     }
 }
   
  for (int i = 0; i< asteroids.size(); i++) {
     for(int j = 0; j < bulletList.size(); j++) {
   if (dist(asteroids.get(i).getX(), asteroids.get(i).getY(), 
             bulletList.get(j).getMyX(),bulletList.get(j).getMyY()) < 10) {
     asteroids.remove(i);
     break;
     } 
   }
 }
   
  for(int i = 0; i < asteroids.size(); i++){ 
      asteroids.get(i).show();
      asteroids.get(i).move();
   }
   for(int i = 0; i < asteroids.size(); i++){ 
      asteroids.get(i).show();
      asteroids.get(i).move();
   }
     for(int i = 0; i < bulletList.size(); i++){ 
      bulletList.get(i).show();
      bulletList.get(i).move();
   }
     for(int i = 0; i < bulletList.size(); i++){ 
      if ((bulletList.get(i).getCountDown())== 0) {
        // remove the bullet
        bulletList.remove(i);
        break;
      }
   }
spaceship.show();
spaceship.move();

}

public void keyPressed(){
  if (key=='w'){
    spaceship.hyperSpace();
  }
  else if (key=='d'){
    spaceship.turn(15);
  }
    else if (key=='a'){
    spaceship.turn(-15);
  }
    else if (key=='s'){
    spaceship.accelerate(3);
  }
  else if (key=='q'){
    bulletList.add(new Bullet(spaceship));
}
}
