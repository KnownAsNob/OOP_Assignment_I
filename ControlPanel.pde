LightSwitch Lights;

//The pannel

class ControlPanel
{
  ControlPanel()
  {
    
  }

int Temperature;
boolean LightOn;

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
        //Indicator
        if (LightOn == false)
        {
          fill(0, 255, 0); 
          ellipse(width/8 + 25, height - 50, 50, 50);
        }
        
        else 
        {
          fill(255, 0, 0); 
          ellipse(width/8 + 25, height - 50, 50, 50);
        }
      
    //Temperature
      fill(100);
      rect(width/2, height - 75, 100, 50);
      fill(0);
      textSize(17);
      text("Temperature", width/2, height - 10);
      
  }

}

void mousePressed() 
  {
    if (mouseX > width/8 && mouseX < width/8 + 50 && mouseY > height - 75 && mouseY < height - 15)
    {
    LightOn = drawLight();
    println(LightOn);
    //exit();
    }
  }