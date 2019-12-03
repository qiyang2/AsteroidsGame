//your variable declarations here
Spaceship ship;
Star [] nightSky = new Star[200];
ArrayList <Asteroid> asteroid = new ArrayList <Asteroid> ();
public void setup() 
{
  //your code here
  size(500,500);
  ship = new Spaceship();
  for(int i = 0; i< nightSky.length; i++){
  	nightSky[i] = new Star();
  }
  for(int i = 0; i< 15;i++){
		asteroid.add(new Asteroid());
	}
  redraw();

}
public void draw() 
{
  //your code here
  loop();
  background(0);
  ship.show();
  ship.move();
   for(int i = 0; i< nightSky.length; i++)
   {
  	nightSky[i].show();
  }
  	for(int i = 0; i< asteroid.size();i++)
	{
		asteroid.get(i).show();
		asteroid.get(i).move();
		float distance = dist((float)(ship.getCenterX()),(float)(ship.getCenterY()),(float)(asteroid.get(i).getCenterX()),(float)(asteroid.get(i).getCenterY()));

		if(distance <= 20)
		{
			asteroid.remove(asteroid.get(i));
			i--;
		}
		if(asteroid.size() == 0)
		{
			fill(255,255,255);
			textSize(20);
			text("Game Over",200,200);
			text("Reload Page",250,250);
		}
	}
}
	

public void keyPressed(){
	//hyperspace
	if(key == ENTER){
		
		ship.setCenterX((Math.random()*500));
		ship.setCenterY((Math.random()*500));
		ship.setPointDirection((Math.random()*360));
		ship.setDirectionX(0);
		ship.setDirectionY(0);
	}
	if(key == CODED){

	
	//accelerate
	if(keyCode == UP) {

		ship.accelerate(.6);

	}
	else if(keyCode == DOWN) {
		ship.accelerate(-.6);
		
	}
	//turn left
	else if(keyCode == LEFT) {
		ship.turn(-10);
	}
		//turn right
	else if(keyCode == RIGHT) {
		ship.turn(10);
	}
}
	
}

