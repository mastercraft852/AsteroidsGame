class Asteroid extends Floater {
	int rotSpeed;
	public Asteroid(){
		corners = 3;
		xCorners = new int[] {-10,0,10};
		yCorners = new int[] {10,-10,0};
		rotSpeed = (int)(Math.random()*721)-360;
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
}
