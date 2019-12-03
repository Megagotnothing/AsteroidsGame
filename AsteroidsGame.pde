Spaceship kek;
ArrayList <Asteroids> lmao = new ArrayList <Asteroids>();
int initialAst = 10; 
Star[] stars;

boolean boost = false;
boolean turnLeft = false;
boolean turnRight = false;
boolean stop = false;
double slowDown = 0.99;
public void setup() 
{

  size(900,900);
  frameRate(60);
  kek = new Spaceship();
  stars = new Star[200];

  for(int i = 0; i < stars.length; i++)
  {
  	stars[i] = new Star();
  }
  for(int i = 0; i < initialAst; i++)
  {
  	lmao.add(new Asteroids());
  }
}
public void draw() 
{
	background(0);
	kek.move();
	kek.show();
  
	for(int i = 0; i < lmao.size(); i++)
	{
		lmao.get(i).show();
		lmao.get(i).move2();
		lmao.get(i).move();
	}
	for(int i = 0; i < stars.length; i++)
 	{
 
  		stars[i].show();
  	}

	if(boost)
	{
		kek.accelerate(0.5);
	}
	if(turnRight)
	{
		kek.turn(5);
	}
	if(turnLeft)
	{
		kek.turn(-5);
	}
	if(stop)
	{
		kek.setDirectionX(0.9*kek.getDirectionX());
		kek.setDirectionY(0.9*kek.getDirectionY());
	}

	if(kek.getDirectionX()>= 0)
	{
		kek.setDirectionX(slowDown*kek.getDirectionX());
	}
	if(kek.getDirectionX() <= 0)
	{
		kek.setDirectionX(slowDown*kek.getDirectionX());
	}
	if(kek.getDirectionY() >= 0)
	{
		kek.setDirectionY(slowDown*kek.getDirectionY());
	}
	if(kek.getDirectionY() <= 0)
	{
		kek.setDirectionY(slowDown*kek.getDirectionY());
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
		boost = true;
	}
	if(key == 'd'){turnRight = true;}
	if(key == 'a'){turnLeft = true;}
	if(key == 's'){stop = true;} 
}

void keyReleased()
{
	if(key == 'w')
	{
		boost = false;
	}
	if(key == 'd')
	{
		turnRight = false;
	}
	if(key == 'a')
	{
		turnLeft = false;
	}
	if(key == 's')
	{
		stop = false;
	}
}
