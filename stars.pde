
class Star {
  int x, y, d;

  Star() {
    x = int(random(width));
    y = int(random(height));
    d = int(random(5));
  }

  void show() {
    fill(255);
    noStroke();
    circle(x, y, d);
  }
}
