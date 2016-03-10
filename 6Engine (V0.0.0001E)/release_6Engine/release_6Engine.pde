/*
6Engine V0.0.0001E
Experimental Build 1
Released 3/7/2016

Developed independently by Jordan Doose
Supported by Daniel Ellingston

Version Changelog:
Added Shape framework class
Added Rectangle and Button classes
Added mouse checking to Button class
*/

class Shape
{
  int X;
  int Y;
  int WIDTH;
  int HEIGHT;
  color COLOR;
  PImage IMAGE;
  
  boolean usesImage;
}

class Rectangle extends Shape
{
  Rectangle(int x, int y, int w, int h)
  {
    X = x;
    Y = y;
    WIDTH = w;
    HEIGHT = h;
    COLOR = color(255);
    usesImage = false;
  }
  
  Rectangle(int x, int y, int w, int h, color c)
  {
    X = x;
    Y = y;
    WIDTH = w;
    HEIGHT = h;
    COLOR = c;
    usesImage = false;
  }
  
  Rectangle(int x, int y, int w, int h, PImage i)
  {
    X = x;
    Y = y;
    WIDTH = w;
    HEIGHT = h;
    IMAGE = i;
    usesImage = true;
  }
  
  void draw()
  {
    if(!usesImage)
    {
      fill(COLOR);
      rect(X, Y, WIDTH, HEIGHT);
    }
    else if(usesImage)
    {
      image(IMAGE, X, Y, WIDTH, HEIGHT);
    }
  }
}

class Button extends Rectangle
{
  Button(int x, int y, int w, int h)
  {
    super(x, y, w, h);
  }
  
  Button(int x, int y, int w, int h, color c)
  {
    super(x, y, w, h, c);
  }
  
  Button(int x, int y, int w, int h, PImage i)
  {
    super(x, y, w, h, i);
  }
  
  void draw()
  {
    super.draw();
  }
  
  boolean checkPress(int mX, int mY, boolean mC)
  {
    if(mC)
    {
      if(mX > X && mX < X + WIDTH && mY > Y && mY < Y + HEIGHT)
      {
        return true;
      }
    }
    return false;
  }
  
  boolean checkMouse()
  {
    return checkPress(mouseX, mouseY, mousePressed);
  }
}