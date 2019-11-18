class Asteroid extends Floater {
	int rotSpeed;
	public Asteroid(){
		corners = 3;
		xCorners = new int[] {-1,1,0};
		yCorners = new int[] {1,-1,0};
		rotSpeed = (int)(Math.random()*361)+1;
    	myCenterX = (Math.random()*width/2)+(width/2);
    	myCenterY = (Math.random()*height/2)+(height/2);
    	myColor = color(165,42,42);
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 90;
	}
	public void move(){
		turn(rotSpeed);
		super.move();
	}
}
