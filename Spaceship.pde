class Spaceship extends Floater
{   
    //your code here
    public Spaceship()
    {
    	 corners = 4;
    	int[] xs = {-8,16,-8,-2};
    	int[] ys = {-8,0,8,0};
    	 xCorners = xs;
    	 yCorners = ys;
    	 myColor = color(255,255,255);
    	 myCenterX = 250;
    	 myCenterY = 250;
    	 myDirectionX = 3;
    	 myDirectionY = 3;
    	 myPointDirection = 0;

    }
    public void setDirectionX(double x) {
    	myDirectionX = x;
    }
    public void setDirectionY(double y) {
    	myDirectionY = y;
    }
    public void setCenterX(double x) {
    	myCenterX = x;
    }
    public void setCenterY(double y) {
    	myCenterY = y;
    }
    public void setPointDirection(double x) {
    	myPointDirection = x;
    }
   
}
