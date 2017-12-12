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
boolean IsInitialising = false;
int Size = 1;

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
  
  //Draw Reactor
  if (IsInitialising == true)
  {
    if (Size != 250)
    {
    fill(255, 0, 0);
    ellipse(width/2, height/2 - 100, Size, Size);
      Size = Size + 1;
    }
    
    else
    {
       IsInitialising = false;
    }
  }
  
  //Photon System
  if (CoreActive == true && IsInitialising == false)
  {
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
} //End of Draw

void keyPressed() 
{
    CoreActive = true;
    Core = new CoreObject();
    IsInitialising = true;
    //Core.drawCore();
}
  
void updateTemp()
{  
  fill(255);
  textSize(25);
  text(Temperature, width/2, height - 37);
}