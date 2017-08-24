PFont font;
import processing.sound.*;
SoundFile file;
int x= width/2;
int y = height/2;
int x1 = 1;
int y1 = 1;
int direction = 0;
int xpoop=-50;
int ypoop=0;
PImage tree;
PImage background;
PImage leave;
PImage leave0;
PImage leave1;
PImage leave2;
PImage leave3;
PImage background1;
PImage bird;
PImage poop;

int leafX = 200;
int leafY = 200;
int leaf0X = 600;
int leaf0Y = 500;
int leaf1X = 300;
int leaf1Y = 400;
int leaf2X = 200;
int leaf2Y = 500;
int leaf3X = 300;
int leaf3Y = 500;


void setup()
{
  file = new SoundFile(this, "Otherside.mp3");
  file.loop();
  size (800, 800);
  background = loadImage("background.jpg");
  background1 = loadImage("foret.jpg");
  tree=loadImage("tree.png");
  leave=loadImage("leave.png");
  leave0 = loadImage("leave0.png");
  leave1 = loadImage ("leave1.png");
  leave2 = loadImage("leave2.png");
  leave3 = loadImage("leave3.png");
  bird=loadImage("bird.png");
  font=loadFont("Apple-Chancery-20.vlw");
  textFont(font, 30);
  poop=loadImage("Poop.png");
}

void draw()
{
  image(background, 0, 0, 800, 800);

  if (mousePressed == true)
  {
    tint(100, 250);
    image(background1, 0, 0, 800, 800);
    noTint();
  }


  image(tree, x, y, 700, 800);
  image(leave, leafX, leafY, 70, 40);
  leafY = leafY+10;


  if (leafY> height)

  {
    leafX=(int)random( 182, 590);
    leafY=(int) random (130, 464);
  }
  image (leave0, leaf0X, leaf0Y, 70, 40);
  leaf0Y=leaf0Y+12;
  if (leaf0Y > height)
  {
    leaf0X=(int)random( 182, 590);
    leaf0Y=(int) random (130, 464);
  }
  image(leave1, leaf1X, leaf1Y, 70, 40);
  leaf1Y = leaf1Y+14;

  if (leaf1Y> height)

  {
    leaf1X=(int)random( 182, 590);
    leaf1Y=(int) random (130, 464);
  }
  image(leave2, leaf2X, leaf2Y, 70, 40);
  leaf2Y = leaf2Y+11;

  if (leaf2Y> height)

  {
    leaf2X=(int)random( 182, 590);
    leaf2Y=(int) random (130, 464);
  }
  image(leave3, leaf3X, leaf3Y, 70, 40);
  leaf3Y = leaf3Y+13;

  if (leaf3Y> height)
  {
    leaf3X=(int)random( 182, 590);
    leaf3Y=(int) random (130, 464);
  }

  if (keyPressed)
  {
    if (key=='z')
    {
      direction=-10;
    }
    if (key=='w')
    {
      direction=10;
    }
    if (key=='s')
    {
      xpoop=x1+70;
      ypoop=y1+110;
    }
  }

  image(bird, x1, y1, 140, 160);
  x1=x1+10;
  y1=y1+direction;

  image(poop, xpoop, ypoop, 30, 50);
  ypoop=ypoop+30;

  if (x1 > width==true)
  {
    x1 = 1;
  }
  if (y1 > 400 ==true)
  {
    direction = -10;
  }
  if (y1 < 0==true)
  {
    direction = +10;
  }

  text("23/08/17 by Alicia Hobdell", 450, 780);
  println(mouseX+" "+mouseY);
}