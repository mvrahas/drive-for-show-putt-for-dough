void distanceXtab() { //1
  fill(100,100,100);
  noStroke();
  arc(25, 775, 1462, 1462, (7*PI)/4, 2*PI, PIE);
  rect(25, 775, 110, 25);
  fill(0);
  textFont(tabFont);
  text("Driving Distance", 30, 795);
}

void accuracyXtab() {//2
  fill(150,150,150);
  noStroke();
  arc(25, 775, 1462, 1462, (7*PI)/4, 2*PI, PIE);
  rect(135, 775, 110, 25);
  fill(0);
  textFont(tabFont);
  text("Driving Accuracy", 140, 795);
}

void girXtab() {//3
  fill(200,200,200);
  noStroke();
  arc(25, 775, 1462, 1462, (7*PI)/4, 2*PI, PIE);
  rect(245, 775, 110, 25);
  fill(0);
  textFont(tabFont);
  text("Greens in Reg.", 250, 795);
}

void puttingXtab() {//4
  fill(250,250,250);
  noStroke();
  arc(25, 775, 1462, 1462, (7*PI)/4, 2*PI, PIE);
  rect(355, 775, 110, 25);
  fill(0);
  textFont(tabFont);
  text("Putting Average", 360, 795);
} 

void distanceYtab() {//1
  fill(100,100,100);
  noStroke();
  arc(25, 777, 1462, 1462, (3*PI)/2, (7*PI)/4, PIE);
  rect(0, 665, 25, 110);
  fill(0);
  textFont(tabFont);
  rotate(-PI/2);
  text("Driving Distance", -770, 12);
  rotate(PI/2);
}

void accuracyYtab() {//2
  fill(150,150,150);
  noStroke();
  arc(25, 777, 1462, 1462, (3*PI)/2, (7*PI)/4, PIE);
  rect(0, 555, 25, 110);
  fill(0);
  textFont(tabFont);
  rotate(-PI/2);
  text("Driving Accuracy", -661, 12);
  rotate(PI/2);
}

void girYtab() {//3
  fill(200,200,200);
  noStroke();
  arc(25, 777, 1462, 1462, (3*PI)/2, (7*PI)/4, PIE);
  rect(0, 445, 25, 110);
  fill(0);
  textFont(tabFont);
  rotate(-PI/2);
  text("Green in Reg.", -550, 12);
  rotate(PI/2);
}

void puttingYtab() {//4
  fill(250,250,250);
  arc(25, 777, 1462, 1462, (3*PI)/2, (7*PI)/4, PIE);
  rect(0, 335, 25, 110);
  fill(0);
  textFont(tabFont);
  rotate(-PI/2);
  text("Putting Average", -440, 12);
  rotate(PI/2);
}

void drawTabs() {
  distanceXtab();
  accuracyXtab();
  girXtab();
  puttingXtab();
  distanceYtab();
  accuracyYtab();
  girYtab();
  puttingYtab();
  if (statX == 4) {
    distanceXtab();
  }
  if (statX == 5) {
    accuracyXtab();
  }
  if (statX == 6) {
    girXtab();
  }
  if (statX == 7) {
    puttingXtab();
  }
  if (statY == 4) {
    distanceYtab();
  }
  if (statY == 5) {
    accuracyYtab();
  }
  if (statY == 6) {
    girYtab();
  }
  if (statY == 7) {
    puttingYtab();
  }
}