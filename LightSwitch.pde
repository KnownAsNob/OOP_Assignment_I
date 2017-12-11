class LightSwitch
{
  LightSwitch()
  {
    //Place Values Here
  }
}

// Global variables here
boolean LightOn = false;
  
void drawLight()
  {
    if (LightOn == false) //Light off
    {
      background(180);
        fill(0, 255, 0); 
        ellipse(50, 50, 100, 100);
      LightOn = true;
    }
    
    else 
    {
      background(50, 50, 50);
        fill(255, 0, 0); 
        ellipse(50, 50, 100, 100);
      LightOn = false;
    }
  }