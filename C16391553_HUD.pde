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
  
  //Photon System
  
  if (CoreActive == true)
  {
   
  
  //Photon System
  
  Photons.add(new Photon(new PVector(width/2, height/2 - 100)));
    
    for (int i = Photons.size()-1; i >= 0; i--) 
    {
      Photon p = Photons.get(i);
      p.run();
      
      if (p.isDead())
      {
        Photons.remove(i);
      }
    }
  }
  
}

void keyPressed() 
{
    CoreActive = true;
    Core = new CoreObject();
    Core.drawCore();
}
  
void updateTemp()
{  
  fill(255);
  textSize(25);
  text(Temperature, width/2, height - 37);
}