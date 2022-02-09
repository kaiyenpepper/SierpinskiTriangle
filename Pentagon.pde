class Pentagon{
  protected int corners;
  protected int[] xCorners;
  protected int[] yCorners;
  protected int myCenterX, myCenterY;

public Pentagon(int x, int y){
  myCenterX = x;
  myCenterY = y;
  
  corners = 5;
  xCorners = new int[corners];
  yCorners = new int[corners];
  xCorners[0] = x+250;
  yCorners[0] = y+150;
  xCorners[1] = x+250+95;
  yCorners[1] = y+150+70;
  xCorners[2] = x+250+60;
  yCorners[2] = y+150+80+100;
  xCorners[3] = x+250-60;
  yCorners[3] = y+150+80+100;
  xCorners[4] = x+250-95;
  yCorners[4] = y+150+70;
}

public void show(){
  beginShape();
    for (int nI = 0; nI < corners; nI++)
    {
      vertex(xCorners[nI], yCorners[nI]);
    }
    endShape(CLOSE);
    }
}
