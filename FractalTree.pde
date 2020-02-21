private double fractionLength = .8; 
private int smallestBranch = 10; 
private double bA = .2;  
public void setup() 
{   
  size(640,480);    
  noLoop(); 
} 
public void draw() 
{   
  background(0);   
  stroke(0,255,0);   
  line(320,480,320,380);   
  drawBranches(320,380,90,3*Math.PI/2, 255);  //will add later 
} 
public void drawBranches(int x,int y, double bL, double ang, int t) 
{   
   double angle1 = ang - bA ;  
   double angle2 = ang + bA;  
   double angle3 = ang - (2 * bA);  
   double angle4 = ang + (2 * bA);  
   bL*=fractionLength;
   int X1 = (int)(bL*Math.cos(angle1) + x);
int Y1 = (int)(bL*Math.sin(angle1) + y);
int X2 = (int)(bL*Math.cos(angle2) + x);
int Y2 = (int)(bL*Math.sin(angle2) + y);
int X3 = (int)(bL*Math.cos(angle3) + x);
int Y3 = (int)(bL*Math.sin(angle3) + y);
int X4 = (int)(bL*Math.cos(angle4) + x);
int Y4 = (int)(bL*Math.sin(angle4) + y);
stroke(50-t,t,70-t); 
t-=30;
line(X1,Y1,x,y); 
line(X4,Y4,x,y); 
line(X3,Y3,x,y); 
line(X2,Y2,x,y); 
if(bL > 10)
{
  drawBranches(X1,Y1,bL,angle1,t);
  drawBranches(X2,Y2,bL,angle2,t);
  drawBranches(X3,Y3,bL,angle3,t);
  drawBranches(X4,Y4,bL,angle4,t);
}
  
   
} 
