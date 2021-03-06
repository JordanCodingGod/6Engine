/*
6Engine V0.1.0002E
Experimental Build 1.2
Released 3/10/2016

Developed independently by Jordan Doose
Supported by Daniel Ellingston

Version Changelog:
Added Image class to store and display image files better
*/

// CODE BEGINS BELOW



// Shape framework class
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

// Rectangle base class with image capabilities
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

// Ellipse base class
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

// Rectangular button with mouse checking
class RectButton extends Rectangle
{
  RectButton(int x, int y, int w, int h)
  {
    super(x, y, w, h);
  }
  
  RectButton(int x, int y, int w, int h, color c)
  {
    super(x, y, w, h, c);
  }
  
  RectButton(int x, int y, int w, int h, PImage i)
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

// Elliptical button with mouse checking
class EllipseButton extends Ellipse
{
  EllipseButton(int x, int y, int w, int h)
  {
    super(x, y, w, h);
  }
  
  EllipseButton(int x, int y, int w, int h, color c)
  {
    super(x, y, w, h, c);
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











/*

    ___    ______________  _____________________________    _____ __________________________  _   __
   /   |  / ____/_  __/ / / / ____/_  __/  _/ ____/ ___/   / ___// ____/ ____/_  __/  _/ __ \/ | / /
  / /| | / __/   / / / /_/ / __/   / /  / // /    \__ \    \__ \/ __/ / /     / /  / // / / /  |/ / 
 / ___ |/ /___  / / / __  / /___  / / _/ // /___ ___/ /   ___/ / /___/ /___  / / _/ // /_/ / /|  /  
/_/  |_/_____/ /_/ /_/ /_/_____/ /_/ /___/\____//____/   /____/_____/\____/ /_/ /___/\____/_/ |_/   
                                                                                                    

*/


// Custom image class
class Image
{
  int X;
  int Y;
  int W = 0;
  int H = 0;
  PImage img;
  
  boolean custDim = false;;
  
  
  Image()
  {
    X = 0;
    Y = 0;
    img = null;
  }
  
  Image(int x, int y, PImage i)
  {
    X = x;
    Y = y;
    img = i;
  }
  
  Image(int x, int y, int w, int h, PImage i)
  {
    X = x;
    Y = y;
    W = w;
    H = h;
    img = i;
    custDim = true;
  }
  
  void draw()
  {
    if(!custDim)
    {
      image(img, X, Y);
    }
    else if(custDim)
    {
      image(img, X, Y, W, H);
    }
  }
  
  int getX()
  {
    return X;
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
  
  PImage getImage()
  {
    return img;
  }
  
  void setX(int x)
  {
    X = x;
  }
  
  void setY(int y)
  {
    Y = y;
  }
  
  void setW(int w)
  {
    W = w;
  }
  
  void setH(int h)
  {
    H = h;
  }
  
  void setImage(PImage i)
  {
    img = i;
  }
}











/*

    __  ______  ________  __   _____ __________________________  _   __
   /  |/  /   |/_  __/ / / /  / ___// ____/ ____/_  __/  _/ __ \/ | / /
  / /|_/ / /| | / / / /_/ /   \__ \/ __/ / /     / /  / // / / /  |/ / 
 / /  / / ___ |/ / / __  /   ___/ / /___/ /___  / / _/ // /_/ / /|  /  
/_/  /_/_/  |_/_/ /_/ /_/   /____/_____/\____/ /_/ /___/\____/_/ |_/   
                                                                       

*/


// 2-dimensional vector
class Vector2
{
  float X;
  float Y;
  
  Vector2()
  {
    X = 0;
    Y = 0;
  }
  
  Vector2(float x, float y)
  {
    X = x;
    Y = y;
  }
  
  Vector2 add(Vector2 toAdd)
  {
    return new Vector2(X + toAdd.X, Y + toAdd.Y);
  }
  
  Vector2 mul(float toMul)
  {
    return new Vector2(X * toMul, Y * toMul);
  }
  
  float length()
  {
    return sqrt((X*X) - (Y*Y));
  }
}

// 3-dimensional vector
class Vector3
{
  float X;
  float Y;
  float Z;
  
  Vector3()
  {
    X = 0;
    Y = 0;
    Z = 0;
  }
  
  Vector3(float x, float y, float z)
  {
    X = x;
    Y = y;
    Z = z;
  }
  
  Vector3 add(Vector3 toAdd)
  {
    return new Vector3(X + toAdd.X, Y + toAdd.Y, Z + toAdd.Z);
  }
  
  Vector3 mul(float toMul)
  {
    return new Vector3(X * toMul, Y * toMul, Z * toMul);
  }
  
  float length()
  {
    return sqrt((X*X) - (Y*Y));
  }
}