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
      //Bottom grip
      rect(width/2 - 150, height - 300, 300, 400); 
      triangle(width/2 - 150, height - 300, width/2, height - 500, width/2 + 150, height - 300);
      
      fill(70);
      rect(width/2 - 160, height - 300, 320, 20);
      rect(width/2 - 160, height - 270, 320, 20);
      rect(width/2 - 160, height - 240, 320, 20);
      
    fill(100);
      
      //Top grip
      rect(width/2 - 150, 0, 300, 100); 
      triangle(width/2 - 150, 0 + 100, width/2, 0 + 300, width/2 + 150, 0 + 100);
      
      fill(70);
      rect(width/2 - 160, 0, 320, 20);
      rect(width/2 - 160, 30, 320, 20);
      rect(width/2 - 160, 60, 320, 20);
      rect(width/2 - 160, 90, 320, 20);
      
      //Lazer
      //quad(0, 60, 0, 0, 110, 60, 80, 110); //x, y, x, y, x, y, x, y
   
  }
}

void keyPressed() 
{
    Core = new CoreObject();
    Core.drawCore();
}