public class Spaceship extends Floater  
{   
    int health;
   	public Spaceship()
    {
    	corners = 4;
    	xCorners = new float[corners];
    	yCorners = new float[corners];

    	xCorners[0] = -8;
    	yCorners[0] = -8;

    	xCorners[1] = -2;
    	yCorners[1] = 0;

    	xCorners[2] = -8;
    	yCorners[2] = 8;

    	xCorners[3] = 16;
    	yCorners[3] = 0;

    	myCenterX = 300;
    	myCenterY = 300;
    	myDirectionX = 0;
    	myDirectionY = 0;
    	myPointDirection = 0;
    	myColor = color(255,255,0);
        fil = false;

        health = 100;

    }
    
    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}

    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}

    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}

    public double getPointDirection(){return (double)myPointDirection;}

    public int getHealth() {return (int)health;}
    public void damage(int n){health = health - n;}

    public void setColor(int r, int g, int b){myColor = color(r,g,b);}

}
