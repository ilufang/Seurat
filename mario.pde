<<<<<<< HEAD
/* @pjs preload="mario.jpg"; */
/* @pjs preload="jinkela.jpg"; */

=======
>>>>>>> parent of b977d22... Update mario.pde
PImage img;
String[] images = {"mario.jpg","jinkela.jpg"};

void reloadimg(){
	int i = (int)random(0,2);
	img = loadImage(images[i]);
	fill(255);
}

void setup()
{
	size(460,276);
	reloadimg();
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
