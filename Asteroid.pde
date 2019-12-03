class Asteroid extends Floater
{
	private int rotSpeed;
	public Asteroid()
	
	{
		corners = 6;
		int[] xs = {-11,-11,-5,0,11,7};
		int[] ys = {-10,2,15,10,9,-6};
		xCorners = xs;
		yCorners = ys;
		rotSpeed = 1;
		myColor = color(255,255,255,70);
    	myCenterX = (int)(Math.random()*500);
    	myCenterY = (int)(Math.random()*500);
    	myDirectionX = (int)(Math.random()*5)-2;
    	myDirectionY = (int)(Math.random()*5)-2;    
    	myPointDirection = 0;

	}
	public void move()
	{
		turn(rotSpeed);
		super.move();
		
	}
	public void setDirectionX(double x) {
    	myDirectionX = x;
    }
    public void setDirectionY(double y) {
    	myDirectionY = y;
    }
    public double getCenterX() {
    	return myCenterX;
    }
    public double getCenterY() {
    	return myCenterY;
    }
    public void setPointDirection(double x) {
    	myPointDirection = x;
    }
}