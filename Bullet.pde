public class Bullet extends Floater
{

    public void setX(int x){myCenterX = x;}
    public int getX(){return (int)myCenterX;}

    public void setY(int y){myCenterY = y;}
    public int getY(){return (int)myCenterY;}

    public void setDirectionX(double x){myDirectionX = x;}
    public double getDirectionX(){return (double)myDirectionX;}

    public void setDirectionY(double y){myDirectionY = y;}
    public double getDirectionY(){return (double)myDirectionY;}

    public double getPointDirection(){return (double)myPointDirection;}
    
	Bullet(Spaceship theShip)
	{
		myCenterX = theShip.getX();
		myCenterY = theShip.getY();
		myPointDirection = Math.random()*30+(theShip.getPointDirection() -15);
		double dRadians =myPointDirection*(Math.PI/180);
		myDirectionX = 10*Math.cos(dRadians) + theShip.getDirectionX();
		myDirectionY= 10*Math.sin(dRadians) + theShip.getDirectionY();
	}
	public void show()
	{
		ellipse((int)myCenterX, (int)myCenterY, 5, 5);

	}

	public void move2()
	{
		myCenterX += myDirectionX;
		myCenterY += myDirectionY;
	}
}