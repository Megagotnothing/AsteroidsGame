Spaceship kek;
ArrayList <Asteroids> lmao = new ArrayList <Asteroids>();
int initialAst = 20; 
Star[] stars;
ArrayList <Bullet> ok = new ArrayList <Bullet>();
boolean idletime;
int timer = 10;
boolean alive = true;
boolean hurt = false;
int hurtTimer;
int score = 0;

boolean boost = false;
boolean turnLeft = false;
boolean turnRight = false;
boolean stop = false;
double slowDown = 0.99;

boolean fire = false;
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
  	lmao.add(new Asteroids(25,15));
  }
}
public void draw() 
{
	if(timer > 0)
	{
		idletime = false;
		timer--;
	}
	if(timer == 0)
	{
		idletime = true;
		timer = 20;
	}
	
	if(hurtTimer > 0){
		hurt = false;
		hurtTimer --;
	}
	if(hurtTimer == 0){
		hurt = true;
		hurtTimer = 50;
	}

	background(0);
	if(alive)
	{
		textSize(20);
		text("Health: " + kek.getHealth(), 0, 800);
		text("Time Survived: " + second(), 800,950);
		text("Score: " + score, 800, 800);
		kek.move();
		kek.show();
		if(hurt)
		{
			kek.setColor(255,255,0);
		}
	}



	if(fire && idletime)
	{
		ok.add(new Bullet(kek));
	}
	for(int i = 0; i < ok.size(); i++)
	{
		ok.get(i).show();
		ok.get(i).move2();
		//ok.get(i).move();
	}
  
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
		 kek.accelerate(0.2);
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
	for(int i = 0; i < lmao.size(); i++)
	{
		if(lmao.get(i).getHealth() <= 0 && !lmao.get(i).getStage())
				{
					score += 10;
					lmao.add(new Asteroids(15,10));
					lmao.add(new Asteroids(15,10));
					lmao.add(new Asteroids(15,10));
					lmao.add(new Asteroids(15,10));
					/*
					lmao.get(lmao.size()-1).setSize(5);
					lmao.get(lmao.size()-2).setSize(5);
					lmao.get(lmao.size()-1).setOffset(0);
					lmao.get(lmao.size()-2).setOffset(0);
					*/
					
					lmao.get(lmao.size()-1).setX(lmao.get(i).getX());
					lmao.get(lmao.size()-1).setY(lmao.get(i).getY());
					lmao.get(lmao.size()-2).setX(lmao.get(i).getX());
					lmao.get(lmao.size()-2).setY(lmao.get(i).getY());
					lmao.get(lmao.size()-3).setX(lmao.get(i).getX());
					lmao.get(lmao.size()-3).setY(lmao.get(i).getY());
					lmao.get(lmao.size()-4).setX(lmao.get(i).getX());
					lmao.get(lmao.size()-4).setY(lmao.get(i).getY());

					lmao.get(lmao.size()-1).setDirectionX(Math.random()*3-1.5);
					lmao.get(lmao.size()-1).setDirectionY(Math.random()*3-1.5);
					lmao.get(lmao.size()-2).setDirectionX(Math.random()*3-1.5);
					lmao.get(lmao.size()-2).setDirectionY(Math.random()*3-1.5);
					lmao.get(lmao.size()-3).setDirectionX(Math.random()*3-1.5);
					lmao.get(lmao.size()-3).setDirectionY(Math.random()*3-1.5);
					lmao.get(lmao.size()-4).setDirectionX(Math.random()*3-1.5);
					lmao.get(lmao.size()-4).setDirectionY(Math.random()*3-1.5);

					lmao.get(lmao.size()-1).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-1).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-2).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-2).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-3).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-3).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-4).setTurn((int)(Math.random()*6 -3));
					lmao.get(lmao.size()-4).setTurn((int)(Math.random()*6 -3));


					lmao.get(lmao.size()-1).split();
					lmao.get(lmao.size()-2).split();
					lmao.get(lmao.size()-3).split();
					lmao.get(lmao.size()-4).split();
					/*
					lmao.get(lmao.size()-1).setColor(255,0,0);
					lmao.get(lmao.size()-2).setColor(255,0,0);
					lmao.get(lmao.size()-3).setColor(255,0,0);
					lmao.get(lmao.size()-4).setColor(255,0,0);
	*/
					lmao.remove(i);
					break;
				}
		for(int j = 0; j < lmao.size(); j++)
		{
			if(i!=j&& dist(lmao.get(j).getX(), lmao.get(j).getY(), lmao.get(i).getX(), lmao.get(i).getY()) < 25 && (hurtTimer == 50 || hurtTimer == 25) && !lmao.get(i).getStage())
			{
				lmao.get(i).damage(1);
				lmao.get(j).damage(1);
			}
		}
	}


	for(int i = 0; i < lmao.size(); i++)
	{

		for(int j = 0; j < ok.size(); j++)
		{
			
			if(dist(ok.get(j).getX(), ok.get(j).getY(), lmao.get(i).getX(), lmao.get(i).getY()) < 20)
			{
				ok.remove(j);
				lmao.get(i).damage(1);
				
				if(lmao.get(i).getStage()) {lmao.remove(i); break;}
			}
		}
	}
	for(int i = 0; i < lmao.size(); i++)
	{
		if(dist(kek.getX(), kek.getY(), lmao.get(i).getX(), lmao.get(i).getY()) < 50 && !lmao.get(i).getStage())
		{
			if(hurtTimer < 50 && hurtTimer > 25)
			{
				kek.setColor(255,0,0);
			}
			if(hurt && millis() > 2000)
			{
				kek.damage(50);
			}
			if(hurtTimer < 25)
			{
				kek.setColor(255,255,0);
			}

		}
		else if(dist(kek.getX(), kek.getY(), lmao.get(i).getX(), lmao.get(i).getY()) < 25 && lmao.get(i).getStage() && millis() > 2000)
		{
			score += 5;
			kek.setColor(127,0,0);
			kek.damage(15);
			lmao.get(i).setColor(127,0,0);
			lmao.remove(i);
			
		}
		
		

		if(kek.getHealth() <= 0)
		{
			alive = false;
		}
		if(!alive)
		{
		textSize(50);
		fill(0,20);
		rect(0, 0, 900, 900);
		fill(255);
		text("YOU HAVE DIED", 275, 450);
		textSize(20);
		text("Time Survived: " + second(), 300,480);
		text("Score: " + score, 300, 500);
		noLoop();

		}

	}
	/*
	for(int j = 0; j < lmao.size(); j++)
	{
		for(int i = 0; i < lmao.size(); i++)
		{
			if(dist(lmao.get(i).getX(), lmao.get(i).getY(), lmao.get(j).getX(), lmao.get(j).getY()) > 0 && i != j)
			{
				lmao.get(i).damage(5);
				lmao.get(j).damage(5);
			}
		}
	}
	*/
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
	if(key == ' ')
		{
			fire = true;
		}
	if(key == 'h')
	{
		kek.accelerate(100);
		kek.accelerate(100);
	}
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
	if(key == ' ')
	{
		fire  = false;
	}
	if(key == 'h')
	{
		kek.setDirectionX(0);
		kek.setDirectionY(0);
	}
}
