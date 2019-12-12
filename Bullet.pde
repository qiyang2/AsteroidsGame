class Bullet extends Floater
{
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getCenterX();
		myCenterY = theShip.getCenterY();
		myPointDirection = theShip.getPointDirection();
		double dRadians = myPointDirection*(Math.PI/180);
		myDirectionX = 5*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY = 5*Math.sin(dRadians) + theShip.getDirectionY();
		
		myColor = color(255,255,0);
		accelerate(2);
	}

	public void show()
	{
		fill(myColor);
		ellipse((float)myCenterX,(float)myCenterY,7,7);

	}
	public double getCenterX()
	{
		return myCenterX;
	}
	public double getCenterY()
	{
		return myCenterY;
	}

}