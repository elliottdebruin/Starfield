NormalParticle [] rParticle;
public void setup()
{
	size(500,500);
	background(0);

	rParticle = new NormalParticle[100];

	for(int i = 0; i <rParticle.length; i++){
		rParticle[i] = new NormalParticle();
	}

}
public void draw()
{
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
		pSpeed = 1;
		pAngle = (Math.random()*Math.PI*2);
	}

	void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);

		if(x>500 || x<0){
			pSpeed = -1;    
		}
	}

	void show(){
		fill(pColor);
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

