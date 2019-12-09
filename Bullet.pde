class Bullet extends Spaceship {
	public Bullet(Spaceship ship){
		myCenterX = ship.getCenterX();
		myCenterY = ship.getCenterY();
		myPointDirection = ship.getPointDir();
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 5 * Math.cos(dRadians) + ship.getDirX();
		myDirectionY = 5 * Math.sin(dRadians) + ship.getDirY();
	}

	public void show(){
		fill(255,0,0);
		noStroke();
		ellipse((float)myCenterX, (float)myCenterY, 2,2);
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