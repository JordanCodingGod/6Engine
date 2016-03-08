/*
6Engine V0.1.0001R
Release Build 1
Released 3/7/2016

Developed independently by Jordan Doose
Supported by Daniel Ellingston

Version Changelog:
Nothing changed from V0.0.0002E
*/

class Shape
{
  int X;
  int Y;
  int W;
  int H;
  color COLOR;
  PImage IMAGE;
  
  boolean usesImage;
  
  int getX()
  {
    return W;
  }
  
  int getY()
  {
    return Y;
  }
  
  int getW()
  {
    return W;
  }
  
  int getH()
  {
    return H;
  }
  
  color getColor()
  {
    return COLOR;
  }
  
  PImage getImage()
  {
    return IMAGE;
  }
  
  void setX(int x)
  {
    X = x;
  }
  
  void setY(int y)
  {
    Y = y;
  }
  
  void setWidth(int w)
  {
    W = w;
  }
  
  void setHeight(int h)
  {
    H = h;
  }
  
  void setColor(color c)
  {
    COLOR = c;
  }
  
  void setImage(PImage i)
  {
    IMAGE = i;
  }
}

class Rectangle extends Shape
{
  Rectangle(int x, int y, int w, int h)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    COLOR = color(255);
    usesImage = false;
  }
  
  Rectangle(int x, int y, int w, int h, color c)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    COLOR = c;
    usesImage = false;
  }
  
  Rectangle(int x, int y, int w, int h, PImage i)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    IMAGE = i;
    usesImage = true;
  }
  
  void draw()
  {
    if(!usesImage)
    {
      fill(COLOR);
      rect(X, Y, W, H);
    }
    else if(usesImage)
    {
      image(IMAGE, X, Y, W, H);
    }
  }
}

class Ellipse extends Shape
{
  Ellipse(int x, int y, int w, int h)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    COLOR = color(255);
  }
  
  Ellipse(int x, int y, int w, int h, int c)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    COLOR = c;
  }
  
  void draw()
  {
    fill(COLOR);
    ellipse(X, Y, W, H);
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
  
  boolean checkPos(int mX, int mY, boolean mC)
  {
    if(mC)
    {
      if(mX > X && mX < X + W && mY > Y && mY < Y + H)
      {
        return true;
      }
    }
    return false;
  }
  
  boolean checkMouse()
  {
    return checkPos(mouseX, mouseY, mousePressed);
  }
}