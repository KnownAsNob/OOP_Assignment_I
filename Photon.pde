class Photon 
{
  PVector position;
  PVector velocity;
  PVector acceleration;
  float lifespan;

  Photon(PVector l) {
    acceleration = new PVector(0, 0.02);
    velocity = new PVector(random(-4, 4), random(-3, 3));
    position = l.copy();
    lifespan = 200.0;
}

void run() 
{
  update();
  display();
}

  //Change Position
  void update() {
    velocity.add(acceleration);
    position.add(velocity);
    lifespan -= 2.0;
  }

  // Dsiplay
  void display() 
  {
    noStroke();
    fill(255, 0, 0 , lifespan);
    ellipse(position.x, position.y, 12, 12);
  }

  // Remove Particle
  boolean isDead() 
  {
    if (lifespan < 0.0)
    {
    return true;
    } 
    
  else 
    {
      return false;
    }
  }
}