
void whoosh() {
  background(0);
  stars();

  int i = 0;
  while (i < myObjects.size()) { 
    GameObject myObj = myObjects.get(i);
    myObj.show();
    myObj.act();

    if (myObj.lives == 0) {
      myObjects.remove(i);
    } else {
      i++;
    }
  }
  
  if (asteroidcounter>=21) MODE = VICTORY;
  if (myShip.lives <=0) MODE = DIE;
  
  print(myShip.lives);
}

//when i thought i had the time to be extra
void stars() {
  int s = 0;
  while (s < numstars) {
    stars[s].show();
    s++;
  }
}
