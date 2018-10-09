Bacteria [] bob; 
void setup()   
{     
  size(300,300);
   bob = new Bacteria [100];
   for(int i=0;i<bob.length;i++)
   {
     bob[i]=new Bacteria();
   }
}   
void draw()   
{    
  background(0);
  for(int i=0;i<bob.length;i++)
   {
     bob[i].show();
     bob[i].walk();
    }
}  
class Bacteria    
{     
  int myX,myY,myColor;
  Bacteria(){
    myX=150;
    myY=150;
    myColor=color((int)(Math.random()*256),(int)(Math.random()*256),(int)(Math.random()*256));
  }
  void walk()
  {
     myX=myX+((int)(Math.random()*3))-1;
     myY=myY+((int)(Math.random()*3))-1;
  }
  void show(){
    fill(myColor);
    ellipse(myX,myY,50,50);
  }
}