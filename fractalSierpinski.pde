PShape p;
public void setup(){
  size(500,500);
  p = createShape();
  p.beginShape();
  p.vertex(250,150);
  p.vertex(250+95,150+70);
  p.vertex(250+60,150+80+100);
  p.vertex(250-60,150+80+100);
  p.vertex(250-95,150+70);
  p.vertex(250,150);
}

public void draw(){
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


