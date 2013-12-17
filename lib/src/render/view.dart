part of michelangelo;


class View extends Rectangle{
  
  RectangleContainer subviews;
  
  View(){
    this.subviews = new RectangleListContainer();
  }
  
  void drawRectangle(Rectangle r, CanvasRenderingContext2D ctx){
    
  }

  void drawSubviews (Rectangle r, CanvasRenderingContext2D ctx){
    List<View> sub = subviews.rectanglesThatIntersect(r);
    for(int i = 0; i < sub.length; i++){
      num top = max(r.top, sub[i].top);
      num bot = min(r.bottom, sub[i].bottom);
      num left = max(r.left, sub[i].left);
      num right = min(r.right, sub[i].right);
      Rectangle intersection = new Rectangle(top - sub[i].top,
                                             left - sub[i].left,
                                             right - left,
                                             bot - top);
      ctx.save();
      ctx.translate(sub[i].left, sub[i].top);
      sub[i].draw(intersection, ctx);
      ctx.restore();
    }
  }
  
  void draw (Rectangle r, CanvasRenderingContext2D ctx){
    this.drawRectangle(r, ctx);
    this.drawSubviews(r, ctx);
  }
}