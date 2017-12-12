class CoreObject
{
  
  void initCore()
  { 
    //Lazers
      stroke(255, 0, 0);
    line(0, 0, width/2, height/2 - 100); //TOPR
    line(width, 0, width/2, height/2 - 100); //TOPL
    line(0, height, width/2, height/2 - 100); //BOTTR
    line(width, height, width/2, height/2 - 100); //BOTTL
//////////
      noStroke();
    }
  }