part of geometry;

class RectangleListContainer implements RectangleContainer{
  
  List<Rectangle> _rectangles;
  
  RectangleListContainer(){
    this._rectangles = [];
  }
  
  void addRectangle(Rectangle r) {
    _rectangles.add(r);
  }

  List<Rectangle> allRectangles() {
    return _rectangles;
  }

  List<Rectangle> rectanglesThatIntersect(Rectangle r) {
    List<Rectangle> ret = [];
    for(int i = 0; i < _rectangles.length; i++){
      Rectangle other = _rectangles[i];
      if(r.left <= other.right &&
         other.left <= r.right &&
         r.top <= other.bottom &&
         other.top <= r.bottom){
        ret.add(other);
      }
    }
    return ret;
  }
  
  void removeRectangle(Rectangle r){
    _rectangles.remove(r);
  }
}