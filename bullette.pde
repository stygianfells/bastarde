
//pew pew
//pew pew pew pew pew
//ew ew ew ew

class Bullet extends GameObject {
  int timer;

  Bullet() {
    lives = 1;
    timer = 60;
    location = new PVector(myShip.location.x, myShip.location.y);
    velocity = new PVector(myShip.direction.x, myShip.direction.y);
    velocity.setMag(10);
    size = 10;
  }

  void show() {
    noStroke();
    //rebel scum
    fill(255, 0, 0);
    circle(location.x, location.y, size);
  }

  void act() {
    super.act();
    timer--;
    if (timer == 0) {
      lives--; 
    }

  }
}
