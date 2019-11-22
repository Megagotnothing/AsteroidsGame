public class Asteroids extends Floater
{
	private int rotateSpd;
	private double siz;
	public Asteroids()
	{
		siz = Math.random();
		offset = 10;
		rotateSpd = (int)(Math.random()*20-10);
		corners = 12;
		xCorners = new int[]{
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*-siz + offset),		
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),		
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset)
		};
		yCorners = new int[]{
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
			(int)(Math.random()*-siz + offset),
		};
		myCenterX = (int)(Math.random()*600);
    	myCenterY = (int)(Math.random()*600);
    	myDirectionX = (Math.random()*.1)-.05;
  		myDirectionY = (Math.random()*.1)-.05; 
  		myPointDirection = 0;
    	myColor = color(255,255,0);

	}
		public void setX(int x) {myCenterX = x;}
		public int getX() {return (int)myCenterX;}

		public void setY(int y) {myCenterY = y;}
		public int getY() {return (int)myCenterY;}
	
}