class Spaceship extends Floater{
    public Spaceship(){
      myColor = 255;
      corners = 4;
      xCorners = new int[]{-10,-2,-10,20};
      yCorners = new int[]{-10,0,10,0};
      myCenterX = 200;
      myCenterY = 200;
      myXspeed = 0;
      myYspeed = 0;
      myPointDirection = 0;
    }
    public void setXspeed(double x){
      myXspeed = x;
    }
    public void setYspeed(double y){
      myYspeed = y;
    }
    public void setMyCenterX(double X){
      myCenterX = X;
    }
    public void setMyCenterY(double Y){
      myCenterY = Y;
    }
    public void setDirection(double x2){
      myPointDirection = x2;
    }
}
