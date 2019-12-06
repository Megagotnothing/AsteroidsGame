public class Asteroids extends Floater
{
	private int deg,health,offset,siz;
	private boolean stage;

	public void setX(int x) {myCenterX = x;}
	public int getX() {return (int)myCenterX;}

	public void setY(int y) {myCenterY = y;}
	public int getY() {return (int)myCenterY;}

	public int getHealth() {return (int)health;}
	public void damage(int n){health = health - n;}

	public boolean getStage(){return stage;}
	public void split(){stage = true;}

	 public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}
    public void setTurn(int n){deg = n;}

    public void setColor(int r, int g, int b){myColor = color(r,g,b);}

	public Asteroids(int radi, int limit)
	{
		stage = false;
		deg = (int)(Math.random()*2) - 1;
		siz = radi;
		offset = limit;
		corners = 7;
		health = 5;
		xCorners = new float[]{
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+45)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+90)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+135)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+180)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+225)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+270)),
			(float)((Math.random()*siz+offset)*Math.sin((PI/180)*(Math.random()*45)+315)),
			//(float)((Math.random()*siz)*Math.sin((PI/180)*(Math.random()*45)+360))

		};
		yCorners = new float[]{
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+45)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+90)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+135)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+180)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+225)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+270)),
			(float)((Math.random()*siz+offset)*Math.cos((PI/180)*(Math.random()*45)+315)),
			//(float)((Math.random()*siz)*Math.cos((PI/180)*(Math.random()*45)+360))
		};
		myCenterX = (int)(Math.random()*900);
    	myCenterY = (int)(Math.random()*900);
    	
  		myPointDirection = 0;
    	myColor = color(0,255,0);
    	fil = true;
    	myDirectionX = (Math.random()*0.5)-0.25;
		myDirectionY = (Math.random()*0.5)-0.25;


	}
	void move2()
	{
		myPointDirection += deg;
		myCenterX += myDirectionX;    
    	myCenterY += myDirectionY; 

	}	
}
