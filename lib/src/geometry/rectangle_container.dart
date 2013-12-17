part of geometry;

abstract class RectangleContainer{
  void addRectangle(Rectangle r);
  List<Rectangle> rectanglesThatIntersect(Rectangle r);
  List<Rectangle> allRectangles();
  void removeRectangle(Rectangle r);
}