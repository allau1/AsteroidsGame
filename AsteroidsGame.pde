Star[] array1 = new Star[150];
Spaceship bob2 = new Spaceship();
public void setup() 
{
  size(400,400);
  for (int i = 0; i < 150; i++){
    array1[i] = new Star();
  }
}
public void draw() 
{
  //your code here
  background(0);
  for (int i = 0; i < 100; i++){
    array1[i].show();
  }
  bob2.show();
  if(keyPressed){
    if(key == 'w' || key == 'W'){
      bob2.accelerate(0.1);
    }
    if(key == 's' || key == 'S'){
      bob2.accelerate(-0.01);
    }
    if(key == 'a' || key == 'A'){
      bob2.turn(-5);
    }
    if(key == 'd' || key == 'D'){
      bob2.turn(5);
    }
    if(key == 'h' || key == 'H'){
      bob2.setXspeed(0);
      bob2.setYspeed(0);
      bob2.setMyCenterX((int)(Math.random()*400));
      bob2.setMyCenterY((int)(Math.random()*400));
      bob2.setDirection((float)(Math.random()*360));
    }
  }
  bob2.show();
  bob2.move();
}
