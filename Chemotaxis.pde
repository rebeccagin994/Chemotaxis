 Walker[] bob;
 void setup()   
 {     
size(500,500);
bob  = new Walker[10];
for(int i=0; i<bob.length; i++)
{
bob[i] = new Walker();

}

 }   
 void draw()   
 {    
 background(0);
 for(int i = 0; i < bob.length; i++)
 {
 	bob[i].walk();
 	bob[i].show();
}
 }
   
 class Walker    
 {     
int myX, myY, col;
Walker()
{

	myX = myY = 250;
	col=color((int)(Math.random()*256), (int)(Math.random()*256),(int)(Math.random()*256));
	}
	void walk()
{
	myX = myX + (int)(Math.random()*7)-3;
	myY = myY + (int)(Math.random()*7)-3;


}
void show()
{
fill(col);
ellipse(myX,myY,50,50);

}

}


 