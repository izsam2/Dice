Die bob;
Die nob;
Die one;
Die two;
Die three;
Die four;
Die five;
Die six;
Die seven;
 
 void setup()
  {
      noLoop();
      size(600,600);
      bob = new Die(100,250);
      nob = new Die(200,250);
      one = new Die(300,250);
      two = new Die(400,250);
      three = new Die(50,150);
      four = new Die(150,150);
      five = new Die(250,150);
      six = new Die(350, 150);
      seven = new Die(450,150);
      
  }
  void draw()
  {
    background(0,87,32);
    bob.show();
    nob.show();
    one.show();
    two.show();
    three.show();
    four.show();
    five.show();
    six.show();
    seven.show();
    
    int numDots = 0;
    if(bob.myNumber==6){
      numDots = numDots + 6;
    }else if(bob.myNumber==5){
      numDots = numDots + 5;
    }else if(bob.myNumber==4){
      numDots = numDots + 4;
    }else if(bob.myNumber==3){
      numDots = numDots + 3;
    }else if(bob.myNumber==2){
      numDots = numDots + 2;
    }else {
      numDots = numDots + 1;
    }
    
    int numNob = 0;
    if(nob.myNumber==6){
      numNob = numNob + 6;
    }else if(nob.myNumber==5){
      numNob = numNob + 5;
    }else if(nob.myNumber==4){
      numNob = numNob + 4;
    }else if(nob.myNumber==3){
      numNob = numNob + 3;
    }else if(nob.myNumber==2){
      numNob = numNob + 2;
    }else {
      numNob = numNob + 1;
    }
    
    int numOne = 0;
    if(one.myNumber==6){
      numOne = numOne + 6;
    }else if(one.myNumber==5){
      numOne = numOne + 5;
    }else if(one.myNumber==4){
      numOne = numOne + 4;
    }else if(one.myNumber==3){
      numOne = numOne + 3;
    }else if(one.myNumber==2){
      numOne = numOne + 2;
    }else {
      numOne = numOne + 1;
    }
    
    int numTwo = 0;
    if(two.myNumber==6){
      numTwo = numTwo + 6;
    }else if(two.myNumber==5){
      numTwo = numTwo + 5;
    }else if(two.myNumber==4){
      numTwo = numTwo + 4;
    }else if(two.myNumber==3){
      numTwo = numTwo + 3;
    }else if(two.myNumber==2){
      numTwo = numTwo + 2;
    }else {
      numTwo = numTwo + 1;
    }
    
    int numThree = 0;
    if(three.myNumber==6){
      numThree = numThree + 6;
    }else if(three.myNumber==5){
      numThree = numThree + 5;
    }else if(three.myNumber==4){
      numThree = numThree + 4;
    }else if(three.myNumber==3){
      numThree = numThree + 3;
    }else if(three.myNumber==2){
      numThree = numThree + 2;
    }else {
      numThree = numThree + 1;
    }
    
    int numFour = 0;
    if(four.myNumber==6){
      numFour = numFour + 6;
    }else if(four.myNumber==5){
      numFour = numFour + 5;
    }else if(four.myNumber==4){
      numFour = numFour + 4;
    }else if(four.myNumber==3){
      numFour = numFour + 3;
    }else if(four.myNumber==2){
      numFour = numFour + 2;
    }else {
      numFour = numFour + 1;
    }
    
    int numFive = 0;
    if(five.myNumber==6){
      numFive = numFive + 6;
    }else if(five.myNumber==5){
      numFive = numFive + 5;
    }else if(five.myNumber==4){
      numFive = numFive + 4;
    }else if(five.myNumber==3){
      numFive = numFive + 3;
    }else if(five.myNumber==2){
      numFive = numFive + 2;
    }else {
      numFive = numFive + 1;
    }
    
    int numSix = 0;
    if(six.myNumber==6){
      numSix = numSix + 6;
    }else if(six.myNumber==5){
      numSix = numSix + 5;
    }else if(five.myNumber==4){
      numSix = numSix + 4;
    }else if(five.myNumber==3){
      numSix = numSix + 3;
    }else if(five.myNumber==2){
      numSix = numSix + 2;
    }else {
      numSix = numSix + 1;
    }
    
    int numSeven = 0;
    if(seven.myNumber==6){
      numSeven = numSeven + 6;
    }else if(seven.myNumber==5){
      numSeven = numSeven + 5;
    }else if(seven.myNumber==4){
      numSeven = numSeven + 4;
    }else if(seven.myNumber==3){
      numSeven = numSeven + 3;
    }else if(seven.myNumber==2){
      numSeven = numSeven + 2;
    }else {
      numSeven = numSeven + 1;
    }
    
    int finalNum = 0;
    finalNum = numDots + numNob + numOne + numTwo + numThree + numFour + numFive + numSix + numSeven;
    
    text("You rolled " + finalNum + "!", 250, 500);
  }
  void mousePressed()
  {
      redraw();
  }
  class Die //models one single dice cube
  {
      int myX, myY, myNumber;
      
      Die(int x, int y) //constructor
      {
          myNumber = ((int)(Math.random()*6)+1);
          myX = x + 10;
          myY = y + 10;
      }
      
      void show()
      {
          rect(myX,myY,50,50);
          if(myNumber==6){
            ellipse(myX + 15, myY + 10, 12, 12); 
            ellipse(myX + 15, myY + 25, 12, 12);
            ellipse(myX + 15, myY + 40, 12, 12);
            ellipse(myX + 35, myY + 10, 12, 12);
            ellipse(myX + 35, myY + 25, 12, 12);
            ellipse(myX + 35, myY + 40, 12, 12);
          }
          else if(myNumber==5){
            ellipse(myX + 15, myY + 15, 12, 12); 
            ellipse(myX + 15, myY + 35, 12, 12);
            ellipse(myX + 35, myY + 15, 12, 12);
            ellipse(myX + 35, myY + 35, 12, 12);
            ellipse(myX + 25, myY + 25, 12, 12);
          }
          else if(myNumber==4){
            ellipse(myX + 15, myY + 15, 12, 12); 
            ellipse(myX + 15, myY + 35, 12, 12);
            ellipse(myX + 35, myY + 15, 12, 12);
            ellipse(myX + 35, myY + 35, 12, 12);
          }
          else if(myNumber==3){
            ellipse(myX + 15, myY + 15, 12, 12);
            ellipse(myX + 25, myY + 25, 12, 12);
            ellipse(myX + 35, myY + 35, 12, 12);
          }
          else if(myNumber==2){
            ellipse(myX + 15, myY + 15, 12, 12); 
            ellipse(myX + 35, myY + 35, 12, 12);
          }
          else{
            ellipse(myX + 25, myY + 25, 12, 12);
          }
         
      }
  }
