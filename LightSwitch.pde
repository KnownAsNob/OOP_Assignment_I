class LightSwitch
{
  LightSwitch()
  {
    //Place Values Here
  }
}

// Global variables here
boolean LightOn = true;
  
boolean drawLight()
  {
    if (LightOn == true) //Light off
    {
      background(50);
      LightOn = false;
      return false;
    }
    
    else 
    {
      background(180);
      LightOn = true;
      return true;
    }
  }