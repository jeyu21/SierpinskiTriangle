Triangle bob = new Triangle();
public void setup()
{
	size(600,600);

}
public void draw()
{
	background(0);
bob.sierpinski(10, 600,575);
frameRate(10);
}
//public void mouseDragged()//optional
//{
//}


class Triangle{
	private int a, b, length;
	public Triangle(){
		a=0;
		b=0;
		length=0;
	
	
}
public void sierpinski(int x, int y, int z) 
{
	int a = (int)((Math.random()*30)+200);
if(z<=30)
	triangle(x, y, x+z,y,x+z/2,y-z);
else{
	sierpinski(x, y, z/2);
	sierpinski(x+ z/2,y, z/2);
	sierpinski(x+z/4, y-z/2, z/2);
}


		
}
}

