// file #1
int myX = 10;
int myY = 240;
int myLen = 50;

public void setup1()
{
  background(0);
}
public void draw1()
{
  background(0,0,0, 5);
  noFill();
  stroke(255);
  sierpinski(myX, myY, myLen);
}
public void keyPressed1()//optional
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

// file #2
PShape p;
public void setup2(){
  p = createShape();
  p.beginShape();
  p.vertex(250,150);
  p.vertex(250+95,150+70);
  p.vertex(250+60,150+80+100);
  p.vertex(250-60,150+80+100);
  p.vertex(250-95,150+70);
  p.vertex(250,150);
}

public void draw2(){
  background(#BDE342);
  noFill();
  stroke(255);
  strokeWeight(1);
  myFractal(0,0,300);
}

public void myFractal(int x, int y, int siz){
  //draw pentagon centered at (x,y) of size siz
  shape(p,x,y);
  if(siz > 5){ //if siz <= 20 no recursion (only base pentagon, no smaller pentagon)
    myFractal(x-siz/4, y, siz/2);
    myFractal(x+siz/4, y, siz/2);
    myFractal(x, y-siz/4, siz/2);
    myFractal(x, y+siz/4, siz/2);
  }
}

public void setup() {
  size(250, 500);
  setup1();
  scale(0.5);
  translate(0, -250);
  setup2();
  resetMatrix();
}

public void draw() {
  draw1();
  scale(0.5);
  translate(0, -250);
  draw2();
  resetMatrix();
}

public void keyPressed() {
  keyPressed1();
}
