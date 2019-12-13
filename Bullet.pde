class Bullet extends Floater {
	public Bullet(Spaceship ship){
		myCenterX = ship.getCenterX();
		myCenterY = ship.getCenterY()+4;
		myPointDirection = ship.getPointDir();
		double dRadians =myPointDirection*(Math.PI/180);
		accelerate(ship.getSpeed()+2);
	}

	public void show(){
		fill(255,0,0);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 3,3);
	}
	public void setCenterX(double x){myCenterX=x;}
    public void setCenterY(double y){myCenterY=y;}
    public void setDirX(double x){myDirectionX=x;}
    public void setDirY(double y){myDirectionY=y;}
    public void setPointDir(double n){myPointDirection=n;}
    public double getCenterX(){return myCenterX;}
    public double getCenterY(){return myCenterY;}
    public double getDirX(){return myDirectionX;}
    public double getDirY(){return myDirectionY;}
    public double getPointDir(){return myPointDirection;}	
}