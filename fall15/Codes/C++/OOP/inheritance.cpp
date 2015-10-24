#include <iostream>
 
using namespace std;

// Base class
class Shape 
{
   public:
      void setWidth(int w)
      {
         width = w;
      }
      void setHeight(int h)
      {
         height = h;
      }
      //public:
   protected:
      int width;
      int height;
};

// Derived class
class Rectangle: public Shape
{
   public:
      int getArea()
      { 
         return (width * height); 
      }
};

int main(void)
{
   Rectangle Rect;
 
   Rect.setWidth(5);
   Rect.setHeight(7);
   // To test access to  protected variable width
   //cout << Rect.width << "\n";
   // Print the area of the object.
   cout << "Total area: " << Rect.getArea() << endl;

   return 0;
}
