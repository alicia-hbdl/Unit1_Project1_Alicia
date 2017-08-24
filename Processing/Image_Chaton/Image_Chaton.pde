int x =400;
int y = 400;
float size =400;
PImage cat;
void setup()
{

  fullScreen();
  x=width/2;
  y=height/2;
  cat = loadImage("Chaton.png");
}


void draw ()
{
  image(cat, x, y, 100, 100);
   image(cat, mouseX, mouseY);
}


void keyPressed()
{
  if (keyCode == UP)
  {
    y = y-10;
  }
  if(key =='s');
  
}