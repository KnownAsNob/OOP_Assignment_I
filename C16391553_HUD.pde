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

int Size = 0;

void draw()
{
  Unit.drawUnit();
  Control.DrawPanel();
    
}

void mousePressed() 
  {
    if (mouseX > width/8 && mouseX < width/8 + 50 && mouseY > height - 75 && mouseY < height - 15)
    {
    drawLight();
    //exit();
    }
  }