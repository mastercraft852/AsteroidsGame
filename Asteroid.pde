class Asteroid extends Floater {
	protected int rotSpeed;
	public Asteroid(){
		corners = 3;
		xCorners = new int[] {-10,0,10};
		yCorners = new int[] {10,-10,0};
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
	public int getRotSpeed(){return rotSpeed;}
}
