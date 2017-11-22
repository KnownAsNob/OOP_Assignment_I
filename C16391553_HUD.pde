ReactorHall Hall;
ControlPanel Control;

void setup()
{
  fullScreen();
  //size(500, 500);
  background(0);
  
  Control = new ControlPanel();
  Hall = new ReactorHall();
}


void draw()
{
  Control.DrawPanel();
}

void mousePressed() 
  {
    drawLight();
    //exit();
  }