Particle [] rParticle;
public void setup()
{
	size(500,500);
	background(0,0,0);

	rParticle = new Particle[200];

	for(int i = 0; i <rParticle.length; i++){
		rParticle[i] = new NormalParticle();
	}
		rParticle[0] = new OddballParticle();
		rParticle[199] = new JumboParticle();
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
class NormalParticle implements Particle
{
	double x, y;
	double pSpeed;
	double pAngle;
	int pColor;

	NormalParticle(){
		x = 250.0;
		y = 250.0;
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		pSpeed = (Math.random()*10);
		pAngle = (Math.random()*Math.PI*2);
	}

	public void move(){
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

	public void show(){
		fill(100,(float)y,(float)x);
		noStroke();
		ellipse((float)x, (float)y, 10.0, 10.0);
	}
}
interface Particle
{
	public void move();
	public void show();
}
class OddballParticle implements Particle
{
	double x, y;
	double pSpeed;
	double pAngle;
	int pColor;

	OddballParticle(){
		x = 250.0;
		y = 250.0;
		pColor = color((int)(Math.random()*255), (int)(Math.random()*255), (int)(Math.random()*255));
		pSpeed = 3;
		pAngle = (Math.random()*Math.PI*2);
	}

	public void move(){
		x = (Math.cos(pAngle)*pSpeed + x);
		y = (Math.sin(pAngle)*pSpeed + y);
		pAngle = pAngle - 0.038;


	}

	public void show(){
		fill(0,(float)y,(float)x);
		noStroke();
		ellipse((float)x, (float)y, 10.0, 10.0);
	}}
class JumboParticle extends NormalParticle
{
	public void move(){
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

	public void show(){
		fill((float)x,(float)y,0);
		noStroke();
		ellipse((float)x, (float)y, 20.0, 20.0);
	}
}

