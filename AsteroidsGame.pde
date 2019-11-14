Spaceship kek;
public void setup() 
{

  size(600,600);
  frameRate(60);
  kek = new Spaceship();

}
public void draw() 
{
	background(0);
	kek.move();
	kek.show();
	if(kek.getDirectionX()>= 0)
	{
		kek.accelerate(-0.1);
	}
	if(kek.getDirectionX() <= 0)
	{
		kek.accelerate(0.1);
	}
	if(kek.getDirectionY() >= 0)
	{
		kek.accelerate(-0.1);
	}
	if(kek.getDirectionY() <= 0)
	{
		kek.accelerate(0.1);
	}
	if(key =='x')
	{
		kek.setDirectionX(0);
		kek.setDirectionY(0);
	}

}

public void keyPressed()
{
	if(key == 'w')
	{
		kek.accelerate(1);
	}
	if(key == 'd'){kek.turn(5);}
	if(key == 'a'){kek.turn(-5);}
	if(key == 's'){kek.accelerate(-.1);}
}


