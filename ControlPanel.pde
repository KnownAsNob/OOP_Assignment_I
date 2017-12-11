LightSwitch Lights;

//The pannel

class ControlPanel
{
  ControlPanel()
  {
    
  }

int Temperature;

void DrawPanel()
  {
    fill(150);
    quad(0, height, width/10, height - height*0.2, width - width/10, height - height*0.2, width, height);
    
    //LightSwitch
      fill(100);
      rect(width/8, height - 75, 50, 50);
      fill(0);
      textSize(17);
      text("Lights", width/8, height - 10);
      
    //Temperature
      fill(100);
      rect(width/2, height - 75, 100, 50);
      fill(0);
      textSize(17);
      text("Temperature", width/2, height - 10);
      
  }
  
}