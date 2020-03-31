void graphData() {
  float xPoint;
  float yPoint;
  String name;
  float earnings;
  float rank;
  testYear();
  float leftTotal = 0;
  float rightTotal = 0;
  for (int row = 0; row < 20; row++) {
    xPoint = currentTable.getFloat(row, statX);
    yPoint = currentTable.getFloat(row, statY);
    rank = currentTable.getFloat(row, 0);
    rank = 20 - rank;
    if(yPoint/xPoint >1){
    fill(66, 66, 230);
    }
    if(yPoint/xPoint <1){
      fill(230, 69, 66);
    }
    if(yPoint/xPoint ==1){
      fill(120,69,255);
    }
    ellipseMode(CENTER);
    ellipse(25+2.58*xPoint, 775 - 2.58*yPoint, rank*4, rank*4);
  }
  for (int row = 0; row < 20; row++) {
    xPoint = currentTable.getFloat(row, statX);
    yPoint = currentTable.getFloat(row, statY);
    name = currentTable.getString(row, 1);
    rank = currentTable.getFloat(row, 0);
    rank = 20 - rank;
    earnings = currentTable.getFloat(row, 2);
    ellipseMode(CENTER);
    if(yPoint/xPoint > 1){
      leftTotal = leftTotal + earnings;
    }
    if(yPoint/xPoint < 1){
      rightTotal = rightTotal + earnings;
    }
    if (sqrt(sq((25+2.58*xPoint) - mouseX) + sq((775 - 2.58*yPoint) - mouseY)) < rank*2) {
      fill(96,72,72);
      ellipse(25+2.58*xPoint, 775 - 2.58*yPoint, rank*4, rank*4);
      textFont(tabFont);
      fill(0);
      text(name, 25+2.58*xPoint+10, 775 - 2.58*yPoint);
      text("$" + nfc(earnings,0), 25+2.58*xPoint+10, 775 - 2.58*yPoint+15);
    }
  }
  println(leftTotal,rightTotal);
  textFont(moneyCount);
  fill(0);
  text("$" +nfc(leftTotal,0), 35,90);
  text("$"+nfc(rightTotal,0), 580,765);
  
  
  fill(0);
  textFont(tabFont);
  String categories[] = {"s","s","s","s","Driving Distance", "Driving Accuracy", "Green in Regulation", "Putting Average"};
  text(categories[statY] + " vs. " + categories[statX], 192,250);
}

void testYear() {
  if (d.x < d.unitsX + 35) {
    currentTable = stats1980;
  }
  if (d.x > d.unitsX + 35 && d.x < d.unitsX + 35 + 70) {
    currentTable = stats1985;
    println("b");
  }
  if (d.x > d.unitsX + 35 + 70 && d.x < d.unitsX + 35 + 140) {
    currentTable = stats1990;
    println("c");
  }
  if (d.x > d.unitsX + 35 + 140 && d.x < d.unitsX + 35 + 210) {
    currentTable = stats1995;
    println("d");
  }
  if (d.x > d.unitsX + 35 + 210 && d.x < d.unitsX + 35 + 280) {
    currentTable = stats2000;
    println("e");
  }
  if (d.x > d.unitsX + 35 + 280 && d.x < d.unitsX + 35 + 350) {
    currentTable = stats2005;
    println("f");
  }
  if (d.x > d.unitsX + 35 + 350 && d.x < d.unitsX + 35 + 420) {
    currentTable = stats2010;
    println("g");
  }
  if (d.x > d.unitsX + 35 + 420 && d.x < d.unitsX + 35 + 490) {
    currentTable = stats2014;
  }
}

