ReactorHall Hall;
ControlPanel Control;
ReactorUnit Unit;
Photon photon;

void setup()
{
  fullScreen();
  //size(500, 500);
  background(180);
  frameRate(20);
  
  Control = new ControlPanel();
  Hall = new ReactorHall();
  Unit = new ReactorUnit();
}

float Temperature = 0;
boolean CoreActive = false;

ArrayList<Photon> Photons = new ArrayList<Photon>();

void draw()
{
  Unit.drawUnit();
  Control.DrawPanel();
  
  updateTemp();
  
  if (CoreActive == true)
  {
    Temperature += 0.05;
  }
  
  if (CoreActive == true)
  {
    photon = new Photon();
    Photons.add(photon);
    photon.Hello();
    //Core.drawCore();
  }  
}

void keyPressed() 
{
    CoreActive = true;
    Core = new CoreObject();
}
  
void updateTemp()
{  
  fill(255);
  textSize(25);
  text(Temperature, width/2, height - 37);
}