
void mouseReleased() {
  if (MODE == INTRO) MODE = GAME;
  else if (MODE == PAUSE) MODE = GAME;  
  else if (MODE == GAME) MODE = PAUSE;
  else if (MODE == DIE || MODE == VICTORY) MODE = INTRO;
}

void keyPressed() {
  if (keyCode == UP) upkey = true;
  if (keyCode == DOWN) downkey = true;
  if (keyCode == LEFT) leftkey = true;
  if (keyCode == RIGHT) rightkey = true;
  if (key == ' ') spacekey = true;   
}

void keyReleased() {
  if (keyCode == UP) upkey = false;
  if (keyCode == DOWN) downkey = false;
  if (keyCode == LEFT) leftkey = false;
  if (keyCode == RIGHT) rightkey = false;
  if (key == ' ') spacekey = false;
}
