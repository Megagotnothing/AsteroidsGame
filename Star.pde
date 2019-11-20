class Star //note that this class does NOT extend Floater
{
	int x,y,size,col;
	Star()
	{
		x = (int)(Math.random()* 600);
		y = (int)(Math.random()* 600);
		size = (int)(Math.random()*5 + 2);
		col = (int)(Math.random()*20) + 235;
	}
	void show()
	{
		noStroke();
		fill(col);
		ellipse(x,y,size,size);
	}
}

