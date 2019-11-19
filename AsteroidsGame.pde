//your variable declarations here
Spaceship ship;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Star> dots = new ArrayList <Star>();
int i = 0;
public void setup() 
{
  size(500,500);
  background(0);
  ship = new Spaceship();
  for(int i=0;i<(int)(Math.random()*10)+6;i++){rock.add(new Asteroid());}
  for(int ii=0;i<(int)(Math.random()*20)+9;i++){dots.add(new Star());}
}
public void draw() 
{
  //your code here
  background(0);
  ship.move();
  ship.show();
  for(int i=0;i<rock.size();i++){
  	rock.get(i).move();
  	rock.get(i).show();
	}
  for(int ii=0;i<dots.size();i++){dots.get(i).show();}
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