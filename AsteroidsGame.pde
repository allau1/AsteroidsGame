Star[] array1 = new Star[150];
Spaceship bob2 = new Spaceship();
ArrayList <Asteroid> nums = new ArrayList <Asteroid> ();

public void setup()
{
  size(400,400);
  for (int i = 0; i < 150; i++){
    array1[i] = new Star();
  }
  nums.add(new Asteroid());
  nums.add(new Asteroid());
  nums.add(new Asteroid());
  nums.add(new Asteroid());
  nums.add(new Asteroid());
}
public void draw()
{
  //your code here
  background(0);
  for (int i = 0; i < 100; i++){
    array1[i].show();
  }
  for (int i = 0; i < nums.size(); i++){
    nums.get(i).move();
    nums.get(i).show();
    System.out.println(dist((float)bob2.getX(), (float)bob2.getY(), (float)nums.get(i).getXA(), (float)nums.get(i).getYA()));
    if (dist((float)bob2.getX(), (float)bob2.getY(), (float)nums.get(i).getXA(), (float)nums.get(i).getYA()) < 40)
      {
      nums.remove(i);
      System.out.println(nums.size());
      
      }
    }
  //for (int i = 0; i < nums.size(); i++) {
    
  //}
  
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
