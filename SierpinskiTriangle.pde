public void setup()
{
  size(500,500);
  background(0);
  fill(255);
  noStroke();
  sierpinski(50,450,400);
}
public void draw()
{

}
public void mouseDragged()//optional
{

}
public void sierpinski(int x, int y, int len) 
{
  if (len<12) triangle(x,y,x+len/2,y-len,x+len,y);
  else {
    sierpinski(x,y,len/2);
    sierpinski(x+len/2,y,len/2);
    sierpinski(x+len/4,y-len/2,len/2);
  }
}
