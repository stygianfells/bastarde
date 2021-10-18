
class Fire extends GameObject {
 
  int t;
  PVector back;
  
  Fire() {
    lives = 1;
    size = 20;
    t = 180;
    location = new PVector(myShip.location.x, myShip.location.y);
    back = myShip.direction.copy();
    back.rotate(PI);
    back.setMag(5);
    location.add(back);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.rotate(PI);
    velocity.setMag(5);
  }
  
  void show() {
    noStroke();
    fill(245, 106, 106, t);
    circle(location.x, location.y, size);
  }
  
  void act() {
    super.act();
    t -=15;
    size-=1;
    if (t<=0) lives = 0;
  }
  
}
