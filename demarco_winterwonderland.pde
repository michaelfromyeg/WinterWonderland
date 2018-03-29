ArrayList<Snow> mySnow = new ArrayList<Snow>(); //Array of snow
ArrayList<Tree> myTree = new ArrayList<Tree>(); //Array of trees
ArrayList<Snowman> mySnowman = new ArrayList<Snowman>(); //Array of snowmen

//Those could all probably be and should be arrays. Like, we know how many trees and snowmen we're making, along with a maxmimum of snow (89 in my case). Bruh. .push(), .pop() would work easily.

void setup() {
  size(800, 800); //Create canvas
}

void draw() { //Every frame

  background(100, 149, 237); //Draw background (light blue)
  noStroke();
  
  fill(255); //White
  ellipse(400, 750, 1200, 400); //Create hill
  
  fill(#FFFF00); //Yellow
  ellipse(700, 100, 100, 100); //Create sun
  
  stroke(0); //Reset stroke

  //Create trees

  for (int i = 0; i < 10; i++) { //Create 10 
    myTree.add(new Tree(random(200, 600), random(600, 750), width)); //Create tree with random x, y, and based off room width
    myTree.get(i).display(); //Display tree
  }

  //Create snowmen

  for (int i = 0; i < 10; i++) { //Create 10
    mySnowman.add(new Snowman(int(random(200, 600)), int(random(600, 750)), 30)); //Create 
    mySnowman.get(i).display(); //Display
  }

  //Create snow

  if (frameCount % 3 == 0) {
    mySnow.add(new Snow(int(random(100, 700)), 0, 10)); //Create snow EVERY THREE FRAMES
  }

  for (int i = 0; i < mySnow.size(); i++) {

    mySnow.get(i).update(); //Change y, x values
    mySnow.get(i).display(); //Display

    if (mySnow.get(i).getY() > height) {
      mySnow.remove(i);
    }
  }

  //DEBUGGING

  println(mySnow.size()); //Should cap at 89 snowflakes
}
