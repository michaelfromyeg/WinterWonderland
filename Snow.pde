class Snow {

  float x, y, r;

  Snow(float xpos, float ypos, float radius) {

    x = xpos;
    y = ypos;
    r = radius;
    
  }

  void display() {

    fill(#FFFFFF);
    ellipse(x, y, r, r);
  }

  void update() {

    y += 3;
    x += int(random(-7, 7));
  }

  float getY() {
    return this.y;
  }
}
