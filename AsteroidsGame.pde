//your variable declarations here
Spaceship ship;
Star [] nightSky = new Star[200];
ArrayList<Asteroid> asteroid = new ArrayList<Asteroid> ();
ArrayList<Bullet> go = new ArrayList<Bullet> ();
public void setup() 
{
  //your code here
  size(500,500);
  ship = new Spaceship();
  for(int i = 0; i< nightSky.length; i++){
  	nightSky[i] = new Star();
  }
  for(int i = 0; i< 20;i++){
		asteroid.add(new Asteroid());
	}
  
 

}
public void draw() 
{
  //your code here

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
		for(int j = 0; j< go.size(); j++)
		{
			if(dist((float)(go.get(j).getCenterX()),(float)(go.get(j).getCenterY()),(float)(asteroid.get(i).getCenterX()),(float)(asteroid.get(i).getCenterY())) <=20)
			{
				asteroid.remove(asteroid.get(i));
				go.remove(go.get(j));
				break;
				
			}
			
			
		}
		
		
	}
	if(go.size()>= 0)
	{
	for(int i = 0; i< go.size(); i++)
	{
		go.get(i).show();
		go.get(i).move();
		if(go.get(i).getCenterX() == 500 || go.get(i).getCenterY() == 500)
		{
			go.remove(go.get(i));
			i--;
		}
		
		
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

	if(key == ' ')
  	{
  		go.add(new Bullet(ship));
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

