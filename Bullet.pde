class Bullet extends Floater{
  public Bullet(Spaceship bob2){
    myCenterX = bob2.getX();
    myCenterY = bob2.getY();
    myXspeed = bob2.getXSpeed();
    myYspeed = bob2.getYSpeed();
    myPointDirection = bob2.getPointDirection();
    accelerate(6.0);
  }
public void setMyCenterX(double X){
      myCenterX = X;
    }
public void setMyCenterY(double Y){
      myCenterY = Y;
    }
public double getX(){
      return myCenterX;
    }
public double getY(){
      return myCenterY;
    }
  public void show(){
    noStroke();
    fill(#D80404);
    ellipse((float)myCenterX,(float)myCenterY,10,10);
  }
  }
