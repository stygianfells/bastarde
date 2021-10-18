
//sorry i couldn't get it completely done
//i pulled two all nighters this weekend
//things are...changing
//i know this is far from my best work
//im really sorry mr p

final int INTRO=0, DIE=3, PAUSE=2, GAME=1, VICTORY=4;
int MODE=0, asteroidcounter; 
boolean upkey, downkey, leftkey, rightkey, spacekey;
XWing myShip;
ArrayList<GameObject> myObjects;

Star[] stars;
int numstars = 80;

void setup() {
  size(1000, 600);
  myShip = new XWing();
  myObjects = new ArrayList<GameObject>();
  myObjects.add(myShip);
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  myObjects.add(new Asteroid());
  upkey=downkey=leftkey=rightkey=spacekey=false;
  
  stars = new Star[numstars];
  int i = 0;
  while (i < numstars) {
     stars[i] = new Star();
     i++;
  }
}

void draw() {
  if (MODE == INTRO) bay();
  else if (MODE == GAME) whoosh();
  else if (MODE == PAUSE) beep();
  else if (MODE == DIE) no();
  else if (MODE == VICTORY) yay();
  //print(spacekey);
}
