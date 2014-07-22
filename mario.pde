/* @pjs preload="mario.jpg"; */

PImage img;

void setup()
{
	size(460,276);
	img = loadImage("mario.jpg");
	fill(255);
}

void draw()
{
	for(int i = 0; i != 5; i++){
		int x = (int)random(0,460),
			y = (int)random(0,276);
		color c = img.get(x,y);
		fill(c);
		noStroke();
		ellipse(x,y,20,20);
	}
}
