public void setup(){
  size(500,500);
}

public void draw(){
  background(#BDE342);
  fill(255);
  stroke(0);
  strokeWeight(1);
  myFractal(0,0,300);
}

public void myFractal(int x, int y, int siz){
  //draw pentagon centered at (x,y) of size siz
  Pentagon pe = new Pentagon(x,y);
  pe.show();
  if(siz > 5){ //if siz <= 20 no recursion (only base pentagon, no smaller pentagon)
    myFractal(x-siz/4, y, siz/2);
    myFractal(x+siz/4, y, siz/2);
    myFractal(x, y-siz/4, siz/2);
    myFractal(x, y+siz/4, siz/2);
  }
}
