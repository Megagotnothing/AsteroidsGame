public class Asteroids extends Floater
{
	private int deg;
	private double siz,offset;

	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}

	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}

	public Asteroids()
	{
		deg = (int)(Math.random()*10) - 5;
		siz = 30;
		offset = 10.0;
		corners = 7;
		xCorners = new float[]{
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+45)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+90)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+135)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+180)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+225)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+270)),
			(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+315)),
			//(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+360))

		};
		yCorners = new float[]{
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+45)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+90)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+135)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+180)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+225)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+270)),
			(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+315)),
			//(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+360))
		};
		myCenterX = (int)(Math.random()*900);
    	myCenterY = (int)(Math.random()*900);
    	myDirectionX = (Math.random()*.1)-.05;
  		myDirectionY = (Math.random()*.1)-.05; 
  		myPointDirection = 0;
    	myColor = color(0,255,0);
    	fil = true;
    	myDirectionX = (Math.random()*1)-0.5;
		myDirectionY = (Math.random()*1)-0.5;


	}

	void move2()
	{
		myPointDirection += deg;
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 

	}	
}
