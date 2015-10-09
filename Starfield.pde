NormalParticle [] rParticle;
public void setup()
{
	size(500,500);
	background(0,0,0);

	rParticle = new NormalParticle[1000];

	for(int i = 0; i <rParticle.length; i++){
		rParticle[i] = new NormalParticle();
	}

}
public void draw()
{
	fill(0,0,0,10);
	rect(0,0,500,500);
	for(int i = 0; i <rParticle.length; i++){
		rParticle[i].move();
		rParticle[i].show();
	}
}
class NormalParticle
{
	double x, y;
	double pSpeed;
	double pAngle;
	int pColor;

	NormalParticle(){
		x = 250.0;
		y = 250.0;
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		pSpeed = 3;
		pAngle = (Math.random()*Math.PI*2);
	}

	void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		pAngle = pAngle + 0.038;
		if(mouseButton == RIGHT){
			pAngle = pAngle + 0.05;
		}
		if(mouseButton == LEFT){
			pAngle = pAngle - 0.08;
		}
		if(x>350 || x<150 || y>350 || y<150){
			pSpeed = -3;    
		}
		 if(x == 250){
			pSpeed = 3;
		}

	}

	void show(){
		fill(pColor);
		noStroke();
		ellipse((float)x, (float)y, 5.0, 5.0);
	}
}
interface Particle
{
	//your code here
}
class OddballParticle //uses an interface
{
	//your code here
}
class JumboParticle //uses inheritance
{
	//your code here
}

