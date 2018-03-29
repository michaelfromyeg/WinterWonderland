class Snowman {
  
  float x, y, r;
  int offset = 5;

  Snowman(float xpos, float ypos, float radius) {
    x = xpos;
    y = ypos;
    r = radius;
  }

  void display() {
    fill(#FFFFFF);
    ellipse(x, y-r/2, r, r);
    ellipse(x, y-r/2-r/2 + offset, 2*r/3, 2*r/3);
    ellipse(x, y-r/2-r/2-r/4 + offset/2, 4*r/9, 4*r/9);
  }
}
