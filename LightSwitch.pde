class LightSwitch
{
  LightSwitch()
  {
    //Place Values Here
  }
}

// Global variables here
boolean LightsOn = true;
  
boolean drawLight()
  {
    if (LightsOn == true) //Light off
    {
      background(50);
      LightsOn = false;
      return false;
    }
    
    else 
    {
      background(180);
      LightsOn = true;
      return true;
    }
  }