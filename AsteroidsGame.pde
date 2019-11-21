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
  for(int i=0;i<(int)(Math.random()*10)+6;i++){
    rock.add(new Asteroid());
    rock.get(i).setRotSpeed((int)(Math.random()*721)-360);
  }
  for(int ii=0;ii<(int)(Math.random()*20)+9;ii++){dots.add(new Star());}
}
public void draw() 
{
  //your code here
  background(0);
  for(int ii=0;ii<dots.size();ii++){dots.get(ii).show();}
  for(int i=0;i<rock.size();i++){
    rock.get(i).move();
  	rock.get(i).show();
	}
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
	if(key=='B'){
		ship.setCenterX(width/2);
		ship.setCenterY(height/2);
		ship.setDirX(0);
		ship.setDirY(0);
		ship.setPointDir(90);
		rock.clear();
		dots.clear();
		for(int i=0;i<(int)(Math.random()*10)+6;i++){
      rock.add(new Asteroid());
      rock.get(i).setRotSpeed((int)(Math.random()*721)-360);
    }
  	for(int ii=0;ii<(int)(Math.random()*20)+9;ii++){dots.add(new Star());}
  	redraw();
	}
}