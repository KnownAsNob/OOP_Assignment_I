ReactorHall Hall;
ControlPanel Control;
ReactorUnit Unit;

void setup()
{
  fullScreen();
  //size(500, 500);
  background(180);
  
  Control = new ControlPanel();
  Hall = new ReactorHall();
  Unit = new ReactorUnit();
}

int Temperature = 0;
boolean CoreActive = false;

void draw()
{
  Unit.drawUnit();
  Control.DrawPanel();
  
  updateTemp();
  
  if (CoreActive == true)
  {
    Core.drawCore();
    CoreActive = false;
  }
}

void keyPressed() 
{
    CoreActive = true;
    
    Core = new CoreObject();
   // Core.drawCore();
}
  
void mousePressed() 
  {
    if (mouseX > width/8 && mouseX < width/8 + 50 && mouseY > height - 75 && mouseY < height - 15)
    {
    drawLight();
    //exit();
    }
  }
  
void updateTemp()
{  
  fill(255);
  textSize(25);
  text(Temperature, width/2 + 50, height - 37);
}