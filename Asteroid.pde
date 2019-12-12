class Asteroid extends Floater {
	protected int rotSpeed;
	public Asteroid(){
		corners = 5;
		xCorners = new int[] {0,15,20,-12,-6};
		yCorners = new int[] {0,15,-20,12,-6};
		rotSpeed = 0;
    	myCenterX = (Math.random()*width);
    	myCenterY = (Math.random()*height);
    	myColor = color(165,42,42);
    	myPointDirection = (Math.random()*360);
    	accelerate((Math.random()*4));
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
	public void setRotSpeed(int s){rotSpeed=s;}
	public void setCenterX(double x){myCenterX=x;}
    public void setCenterY(double y){myCenterY=y;}
    public void setDirX(double x){myDirectionX=x;}
    public void setDirY(double y){myDirectionY=y;}
    public void setPointDir(double n){myPointDirection=n;}
    public int getRotSpeed(){return rotSpeed;}
    public double getCenterX(){return myCenterX;}
    public double getCenterY(){return myCenterY;}
    public double getDirX(){return myDirectionX;}
    public double getDirY(){return myDirectionY;}
    public double getPointDir(){return myPointDirection;}   
}
