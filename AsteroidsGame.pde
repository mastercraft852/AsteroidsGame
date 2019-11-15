//your variable declarations here
Spaceship ship;
int i = 0;
public void setup() 
{
  size(500,500);
  background(0);
  ship = new Spaceship();
}
public void draw() 
{
  //your code here
  background(0);
  ship.move();
  ship.show();
}

public void keyPressed(){
	if(key=='w'||key=='W'){
		ship.accelerate(1);
	}
	if(key=='s'||key=='S'){
		ship.accelerate(-1);
	}
	if(key=='d'||key=='D'){
		ship.turn(-5);
	}
	if(key=='a'||key=='A'){
		ship.turn(5);
	}
	if(key=='K'){
		if(i%2==0){
			ship.setCenterX(69);
			ship.setCenterY(420);
			i++;
		}
		else{
			ship.setCenterX(420);
			ship.setCenterY(69);
			i++;
		}
		ship.setDirX(0);
		ship.setDirY(0);
	}
}