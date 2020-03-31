void drawGraph() {
  fill(0);
  strokeWeight(.5);
  stroke(10);

  line(541, 260, 541, 774);
  line(154, 260, 154, 774);
  line(283, 260, 283, 774);
  line(412, 260, 412, 774);
  //line(25,260,25,774);


  line(25, 260, 541, 260);
  line(25, 389, 541, 389);
  line(25, 518, 541, 518);
  line(25, 647, 541, 647);
  //line(25,774,541,774);

  textFont(labelFont);
  text("First", 27, 258);
  text("Middle", 27, 516);
  rotate(-PI/2);
  text("First", -772, 550);
  text("Middle", -772, 292);
  rotate(PI/2);
  rotate(-PI/4);
  text("Last", -525, 568);
  rotate(PI/4);
}


