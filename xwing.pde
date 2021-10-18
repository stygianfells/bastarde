
class XWing extends GameObject {
  PVector direction; 
  int shotTimer, threshold;
  
  XWing() {
    lives = 15;
    location = new PVector(width/2, height/2);
    velocity = new PVector(0, 0);
    direction = new PVector(0, -0.1); //-0.1
    shotTimer = threshold;
    threshold = 40;
  }
  
 void show() {
   //rad ship bro
   pushMatrix();
   translate(location.x, location.y);
   rotate(direction.heading());
   noFill();
   stroke(255);
   triangle(0, -10, 0, 10, 30, 0);
   popMatrix();
 }
 
 void act() {
   super.act();
   
   shotTimer++;
   if (upkey) {
     velocity.add(direction);
     myObjects.add(new Fire());
   }
   if (downkey) velocity.sub(direction);
   if (leftkey) direction.rotate(-radians(5));
   if (rightkey) direction.rotate(radians(5));
   
   if (spacekey && shotTimer >= threshold) {
     myObjects.add(new Bullet()); 
     shotTimer = 0;
   }

 }
}
