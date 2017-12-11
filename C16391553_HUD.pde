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


void draw()
{
  Unit.drawUnit();
  Control.DrawPanel();
}

void mousePressed() 
  {
    drawLight();
    //exit();
  }