
class GameObject {
  int lives;
  PVector location;
  PVector velocity;
  int size;

  GameObject() {
  }

  void show() {
  }

  void act() {
    location.add(velocity);

    if (location.y < -40) location.y = height+40;
    else if (location.y > height+40) location.y = -40;
    if (location.x < -40) location.x = width+40;
    else if (location.x > width+40) location.x = -40;
  }
}
