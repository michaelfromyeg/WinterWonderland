class Tree {

  float x, y, treeWidth;
  int offset = 20;
  int treeHeight = width/13;
  int trunkHeight = width/50;

  Tree(float xpos, float ypos, float width) { //Why pass width? - already global variable

    x = xpos;
    y = ypos;
    treeWidth = width / 15;
    
  }

  void display() {

    fill(#193300);
    triangle(x, y, x + treeWidth/2, y - treeHeight, x + treeWidth, y); //Create triangle
    fill(#331900);
    rect(x + offset, y, treeWidth - 2*offset, trunkHeight); //Create trunk
  }
}
