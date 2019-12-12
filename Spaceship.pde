class Spaceship extends Floater  
{   
    int speed;
    public Spaceship(){
    	corners = 3;
    	xCorners = new int[]{-8,-8,15};
    	yCorners = new int[]{-8,8,0};
    	myCenterX = width/2;
    	myCenterY = height/2;
    	myColor = color(255);
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 90;
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
    public int getSpeed(){return speed;}

    public void accelerate (double dAmount){
    speed+=dAmount;
    super.accelerate(dAmount);
    }
    
}
