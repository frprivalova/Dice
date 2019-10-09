Die bob;
void setup()
{
	noLoop();
	size(300,300);
	
}
void draw()
{
	background(0);
	bob = new Die(20,30);
	bob.roll();
	bob.show();

}
void mousePressed()
{
	redraw();
}
class Die //models one single dice cube
{
	int myX,myY, mySize;
	//int dieX = myX - 10;
	//int diey = myY - 10;
	//variable declarations here
	
	Die(int x, int y) //constructor
	{
		mySize = 50;
		myX = x;
		myY = y;
		//variable initializations here
	}
	void roll() 
	{
		myValue = (int)(Math.random()*0.7+1);
	}
	void show()
	{
		fill(255,0,0);
		rect(myX,myY,mySize,mySize);
		text(myValue, myX, myY);
	}
}
