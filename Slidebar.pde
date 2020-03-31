// A class for a draggable thing

class Slidebar {
  boolean dragging = false; // Is the object being dragged?
  boolean rollover = false; // Is the mouse over the ellipse?

  float x, y, w, h;          // Location and size
  float offsetX, offsetY; // Mouseclick offset
  float unitsX, unitsY;
  
  Slidebar(float tempX, float tempY, float tempW, float tempH) {
    x = tempX;
    y = tempY;
    w = tempW;
    h = tempH;
    offsetX = 0;
    offsetY = 0;
    unitsX = tempX;
    unitsY = tempY;
  }
  
 

  // Method to display
  void display() {
    noStroke();
    if (dragging) fill (50);
    else if (rollover) fill(100);
    else fill(175, 200);
    rect(x, 392, w, h);
  }

  // Is a point inside the rectangle (for click)?
  void clicked(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      dragging = true;
      // If so, keep track of relative location of click to corner of rectangle
      offsetX = x-mx;
      offsetY = y-my;
    }
  }

  // Is a point inside the rectangle (for rollover)
  void rollover(int mx, int my) {
    if (mx > x && mx < x + w && my > y && my < y + h) {
      rollover = true;
    } else {
      rollover = false;
    }
  }

  // Stop dragging
  void stopDragging() {
    dragging = false;
  }

  // Drag the rectangle
  void drag(int mx) {
    if (dragging) {
      x = mx + offsetX;
    }
  }
  
  void units(){
    stroke(92,72,72);
    strokeWeight(4);
    line(unitsX,unitsY + h/2,unitsX+490,unitsY + h/2);
    line(unitsX,unitsY+5+h/2,unitsX,unitsY-5+h/2);
    line(unitsX+70,unitsY+5+h/2,unitsX+70,unitsY-5+h/2);
    line(unitsX+140,unitsY+5+h/2,unitsX+140,unitsY-5+h/2);
    line(unitsX+210,unitsY+5+h/2,unitsX+210,unitsY-5+h/2);
    line(unitsX+280,unitsY+5+h/2,unitsX+280,unitsY-5+h/2);
    line(unitsX+350,unitsY+5+h/2,unitsX+350,unitsY-5+h/2);
    line(unitsX+420,unitsY+5+h/2,unitsX+420,unitsY-5+h/2);
    line(unitsX+490,unitsY+5+h/2,unitsX+490,unitsY-5+h/2);
    
    textFont(tabFont);
    fill(92,72,72);
    text("1980",unitsX +0-12,unitsY+33);
    text("1985",unitsX + 70-12,unitsY+33);
    text("1990",unitsX + 140-12,unitsY+33);
    text("1995",unitsX + 210-12,unitsY+33);
    text("2000",unitsX + 280-12,unitsY+33);
    text("2005",unitsX + 350-12,unitsY+33);
    text("2010",unitsX + 420-12,unitsY+33);
    text("2014",unitsX + 490-12,unitsY+33);
  }
}

void drawSlidebar() {
  d.units();
  d.rollover(mouseX, mouseY);
  d.drag(mouseX);
  d.display();
}





