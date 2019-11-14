//your variable declarations here
Spaceship ship;
Star [] nightSky = new Star[200];
public void setup() 
{
  //your code here
  size(500,500);
  ship = new Spaceship();
  for(int i = 0; i< nightSky.length; i++){
  	nightSky[i] = new Star();
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
   for(int i = 0; i< nightSky.length; i++){
  	nightSky[i].show();
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

