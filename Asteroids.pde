 class Asteroid extends Floater {
 public double rotSpeed;
  public Asteroid(){
      myColor = 150;
      corners = 9;
      xCorners = new int[]{-20,-23,-12,5,15,21,-5,10,-15};
      yCorners = new int[]{0,15,18,16,15,0,-25,-15,-15};
      myCenterX = (int)(Math.random()*400);
      myCenterY = (int)(Math.random()*400);
      myXspeed = 1;
      myYspeed = 1;
      myPointDirection = (float)(Math.random()*360);
      rotSpeed = (double)(Math.random()*10);
  }
   public void move(){
     turn(rotSpeed);
     super.move();
   }
    public double getXA(){
      return myCenterX;
    }
    public double getYA(){
      return myCenterY;
    }
}
