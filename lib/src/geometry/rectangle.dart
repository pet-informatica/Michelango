part of geometry;

class Rectangle{
  num top, left, width, height;
  
  Rectangle(this.left, this.top, this.width, this.height);
  
  num get right             => left + width;
      set right(num value)  => left = value - width;
  num get bottom            => top + height;
      set bottom(num value) => top = value - height;
      
  String toString(){
    return "(${this.top}, ${this.left}, ${this.bottom}, ${this.right})";
  }
}