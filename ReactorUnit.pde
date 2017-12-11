CoreObject Core;

class ReactorUnit
{
  ReactorUnit()
  {
    
  }
  
  void drawUnit()
  {
    fill(100);
    noStroke();
      rect(width/2 - 150, height - 300, 300, 400); //Bottom grip
      triangle(width/2 - 150, height - 300, width/2, height - 500, width/2 + 150, height - 300);
      
      rect(width/2 - 150, 0, 300, 100); //Top grip
      triangle(width/2 - 150, 0 + 100, width/2, 0 + 300, width/2 + 150, 0 + 100);
      
    Core = new CoreObject();
    Core.drawCore();
  }
}