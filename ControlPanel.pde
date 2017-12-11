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
    
    //LightSwitch
    fill(100);
    rect(width/8, height - 75, 50, 50);
    fill(0);
    textSize(17);
    text("Lights", width/8, height - 10);
  }
  
}