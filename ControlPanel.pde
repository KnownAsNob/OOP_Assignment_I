LightSwitch Lights;

//The pannel

class ControlPanel
{
  ControlPanel()
  {
    
  }
 
  void DrawPanel()
  {
    fill(150);
    quad(0, height, width/10, height - height*0.2, width - width/10, height - height*0.2, width, height);
  }
  
}