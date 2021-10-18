
void yay() {
  textSize(70);
  textAlign(CENTER, CENTER);
  fill(0, 255, 0);
  text("YOU WON!", width/2, height/2-100);
}

void no() {
  textSize(70);
  textAlign(CENTER, CENTER);
  fill(255, 0, 0);
  text("YOU LOST :(", width/2, height/2-100);
}

void bay() {
  background(0);
  fill(255);
  textAlign(CENTER, CENTER);
  textSize(100);
  text("ASTEROIDS", width/2, height/2-100);
  textSize(40);
  text(">>CLICK TO PLAY<<", width/2, height/2+50);
  
  myShip.lives = 15;
  asteroidcounter = 0;
}

void beep() {
  textSize(70);
  textAlign(CENTER, CENTER);
  text("PAUSED", width/2, height/2-100);
}
