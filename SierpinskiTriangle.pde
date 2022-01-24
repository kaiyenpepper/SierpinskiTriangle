int myX = 10;
int myY = 240;
int myLen = 50;

public void setup()
{
  size(250,250);
  background(0);
}
public void draw()
{
  background(0,0,0, 5);
  noFill();
  stroke(255);
  sierpinski(myX, myY, myLen);
}
public void keyPressed()//optional
{
  if(key == 'w'){
    myLen = myLen + 1;
    sierpinski(myX, myY, myLen);
  }
  if(key == 's'){
    myLen = myLen - 1;
    sierpinski(myX, myY, myLen);
  }
}
public void sierpinski(int x, int y, int len) 
{
  if(len <= 20){
    triangle(x,y, x+len,y, x+len/2,y-len);
  }else{
    sierpinski(x, y, len/2);
    sierpinski(x+len/2, y, len/2);
    sierpinski(x+len/4, y-len/2, len/2);
  }
}
