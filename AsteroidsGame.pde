Star[] array1 = new Star[150];
Spaceship bob2 = new Spaceship();
Bullet bob = new Bullet(bob2);
ArrayList <Asteroid> nums = new ArrayList <Asteroid>();
ArrayList <Bullet> nums2 = new ArrayList <Bullet>();
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
    if (dist((float)bob2.getX(), (float)bob2.getY(), (float)nums.get(i).getXA(), (float)nums.get(i).getYA()) < 40)
      {
      nums.remove(i);
      
      }
    }
for(int i = 0; i <nums2.size(); i++){
  nums2.get(i).move();
  nums2.get(i).show();
  for (int j = 0; j < nums.size(); j++){
     if (dist((float)nums2.get(i).getX(), (float)nums2.get(i).getY(), (float)nums.get(j).getXA(), (float)nums.get(j).getYA()) < 30)
      {
      nums.remove(j);
      nums2.remove(i);
      }
  }
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
    if(key == ' '){
      nums2.add(new Bullet(bob2));
    }
  }
  bob2.show();
  bob2.move();
  
}
