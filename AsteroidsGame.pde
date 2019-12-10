//your variable declarations here
Spaceship ship;
ArrayList <Asteroid> rock = new ArrayList <Asteroid>();
ArrayList <Star> dots = new ArrayList <Star>();
ArrayList <Bullet> hurt = new ArrayList<Bullet>();
int n = 0;
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
	  if(dist((float)(rock.get(i).getCenterX()),(float)(rock.get(i).getCenterY()),(float)(ship.getCenterX()),(float)(ship.getCenterY()))<15){
      rock.remove(i);
    }
  for(int iii=0;iii<hurt.size();iii++){
    hurt.get(iii).move();
    hurt.get(iii).show();
    for(int iiii=0;iiii<rock.size();iiii++){
      if(dist((float)(rock.get(iiii).getCenterX()),(float)(rock.get(iiii).getCenterY()),
        (float)(hurt.get(iii).getCenterX()),(float)(hurt.get(iii).getCenterY()))<15){
      rock.remove(iiii);
      hurt.remove(iii);
      break;
    }
    }
  }
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
		if(n%2==0){
			ship.setCenterX(69);
			ship.setCenterY(420);
			n++;
		}
		else{
			ship.setCenterX(420);
			ship.setCenterY(69);
			n++;
		}
		ship.setDirX(0);
		ship.setDirY(0);
	}
	if(key=='B'){
    reset();
	}
  }
public void reset(){
  ship.setCenterX(width/2);
  ship.setCenterY(height/2);
  ship.setDirX(0);
  ship.setDirY(0);
  ship.setPointDir(90);
  rock.clear();
  dots.clear();
  hurt.clear();
  for(int i=0;i<(int)(Math.random()*10)+6;i++){
    rock.add(new Asteroid());
    rock.get(i).setRotSpeed((int)(Math.random()*721)-360);
  }
  for(int ii=0;ii<(int)(Math.random()*20)+9;ii++){dots.add(new Star());}
  redraw();
}
public void keyReleased(){
  if(key==' '){hurt.add(new Bullet(ship));}
}
