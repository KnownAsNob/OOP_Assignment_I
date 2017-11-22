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
      background(0);
      LightOn = true;
    }
    
    else 
    {
      background(255);
      LightOn = false;
    }
  }