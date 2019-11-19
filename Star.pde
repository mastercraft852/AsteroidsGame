class Star
{
	int x,y;
  Star(){
  	x = (int)(Math.random()*width);
  	y = (int)(Math.random()*height);
}
public void show()
{
	fill(255);
	noStroke();
	ellipse(x, y, 3, 3);
}
}
