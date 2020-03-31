PFont tabFont;
PFont labelFont;
PImage back;
PFont moneyCount;

Table stats1980;
Table stats1985;
Table stats1990;
Table stats1995;
Table stats2000;
Table stats2005;
Table stats2010;
Table stats2014;
Table currentTable = stats1980;

int statX = 4;
int statY = 7;

Slidebar d;

void setup() {
  size(1447, 800);
  tabFont = loadFont("KannadaMN-12.vlw");
  labelFont = loadFont("KannadaMN-10.vlw");
  moneyCount = loadFont("KannadaMN-28.vlw");
  back = loadImage("background.jpg");
  stats1980 = loadTable("stats1980.csv");
  stats1985 = loadTable("stats1985.csv");
  stats1990 = loadTable("stats1990.csv");
  stats1995 = loadTable("stats1995.csv");
  stats2000 = loadTable("stats2000.csv");
  stats2005 = loadTable("stats2005.csv");
  stats2010 = loadTable("stats2010.csv");
  stats2014 = loadTable("stats2014.csv");
  d = new Slidebar(775, 392, 10, 30);
}

void draw() {
  background(back);
  drawTabs();
  drawGraph();
  graphData();
  drawSlidebar();
}

void mousePressed() {
  d.clicked(mouseX, mouseY);
  if(mouseX > 25  && mouseX < 135  && mouseY > 775){
    statX = 4;
  }
  if(mouseX > 25 + 110 && mouseX < 135 + 110 && mouseY > 775){
    statX = 5;
  }
  if(mouseX > 25 + 220 && mouseX < 135 + 220 && mouseY > 775){
    statX = 6;
  }
  if(mouseX > 25 + 330 && mouseX < 135 + 330 && mouseY > 775){
    statX = 7;
  }
  if(mouseY < 775 && mouseY > 665 && mouseX < 25){
    statY = 4;
  }
  if(mouseY < 775 - 110 && mouseY > 665 - 110 && mouseX < 25){
    statY = 5;
  }
  if(mouseY < 775 - 220 && mouseY > 665 - 220 && mouseX < 25){
    statY = 6;
  }
  if(mouseY < 775 - 330 && mouseY > 665 - 330 && mouseX < 25){
    statY = 7;
  }
}

void mouseReleased() {
  d.stopDragging();
}

