import java.util.*;

class Fill {
  Fill() {
  }   
  void fill(int xSeed,int ySeed,color fill, color border){
    println("ok");
     Stack<Point> pila = new Stack();
     pila.add(new Point(xSeed,ySeed));
     while(!pila.isEmpty()){
       //println("a: "+pila.size());
        Point point = pila.pop();
        //println("d: "+pila.size());
        //println("point: "+point.x+","+point.y);
        if(validarPoint(point,fill,border)) {
          set(point.x,point.y,fill);
          pila.add(new Point(point.x + 1, point.y));
          pila.add(new Point(point.x - 1, point.y));
          pila.add(new Point(point.x, point.y + 1));
          pila.add(new Point(point.x, point.y - 1));
        }
        //println("pila: "+pila.size()); 
        //if(pila.size()>1000)
          //break;
     }
  }

  boolean validarPoint(Point point,color fill,color border){              
     //validamos que este dentro de la pantalla
     if(!(point.x>0 && point.y>0 && point.y<height && point.x<width)){
       //println("SE DESCARTA POR PANTALLA");
       return false;
     }     
     //validamos que el color en ese pixel no sea el borde o el fill.     
     //println("Color en pixel: "+getRGBValues(colorEnPixel));
     //println("fill: "+getRGBValues(fill));
     //println("border: "+getRGBValues(border));
     if(get(point.x,point.y) == fill || get(point.x,point.y) == border){
       println("SE DESCARTA POR FILL O BORDE.");
       return false;
     }               
     println("SE PINTA ESE PIXEL");
      return true;                
  }
  String getRGBValues(color c) {
    return "(RGB)="+"("+((int)red(c))+","+((int)green(c))+","+((int)blue(c))+")";
  }
  class Point{
    int x;
    int y;
    Point(int x,int y){
      this.x=x;
      this.y=y;
    }   
  }
}
