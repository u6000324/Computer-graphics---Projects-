class Linea{
  float x1,x2,y1,y2;
  Linea(float _x1,float _y1,float _x2,float _y2){
     this.x1=_x1;
     this.x2=_x2;
     this.y1=_y1;
     this.y2=_y2;
  }
  void print(color c){
     stroke(c); 
     line(x1,y1,x2,y2);
  }  
}
