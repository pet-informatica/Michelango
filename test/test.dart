import "package:michelangelo/geometry.dart";

void main(){
  RectangleContainer rec = new RectangleListContainer();
  rec.addRectangle(new Rectangle(0, 0, 5, 5));
  rec.addRectangle(new Rectangle(3, 3, 5, 5));
  
  print(rec.rectanglesThatIntersect(new Rectangle(1, 1, 2, 2)));
}