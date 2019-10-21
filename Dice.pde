Die bob;
int sum;
void setup()
{
  noLoop();
  size(300,300);
  
}
void draw()
{
 
  background(0);
  sum = 0;
  for (int p = 0; p<=220; p+=100){
   
    for(int i = 0; i<=220; i+=100){
      bob = new Die(i,p);
      bob.show();


      sum = sum + bob.myValue;
      
    }
  }
  textSize(18);
  text("Sum: "+sum,20,20);
}
void mousePressed()
{
  bob.roll();
  redraw();
}
class Die //models one single dice cube
{
  int myX,myY, mySize, myValue,myDot;
  //variable declarations here
  
  Die(int x, int y) //constructor
  {
    mySize = 80;
    myX = x;
    myY = y;
    roll();
    //variable initializations here
  }
  void roll() 
  {
    myValue = (int)(Math.random()*6+1);

  }
  void show()
  {
    fill(0,0,255);
    rect(myX,myY,mySize,mySize);
    fill(255);


    if (myValue == 1)
    	ellipse(myX+40,myY+40,20,20);
    if (myValue == 2){
    	ellipse(myX+25,myY+65,20,20);
    	ellipse(myX+60,myY+20,20,20);
    }
    if (myValue == 3){
    	ellipse(myX+25,myY+60,20,20);
    	ellipse(myX+40,myY+40,20,20);
    	ellipse(myX+60,myY+25,20,20);
    }
    if (myValue == 4){
    	ellipse(myX+25,myY+20,20,20);
    	ellipse(myX+60,myY+20,20,20);
    	ellipse(myX+25,myY+60,20,20);
    	ellipse(myX+60,myY+60,20,20);
    	
    }
    if (myValue == 5){
    	ellipse(myX+25,myY+20,20,20);
    	ellipse(myX+60,myY+20,20,20);
    	ellipse(myX+25,myY+60,20,20);
    	ellipse(myX+60,myY+60,20,20);
    	ellipse(myX+40,myY+40,20,20);
    }
    if (myValue == 6){
    	ellipse(myX+25,myY+20,20,20);
    	ellipse(myX+60,myY+20,20,20);
    	ellipse(myX+25,myY+60,20,20);
    	ellipse(myX+60,myY+60,20,20);
    	ellipse(myX+25,myY+40,20,20);
    	ellipse(myX+60,myY+40,20,20);
    }


  }
}