class peces{
  float velocidad=2.0;
  float y=50.0;
  float radio= 60.0;
  peces(){
  }
void pecesitos(PImage P){
  image(P,y,height/2-50,radio+40,radio+40);
  y=y + velocidad;
  if(y>height+radio)
  y=-radio;
  
  image(P,y,height/2-200,radio+30,radio+30);
  y=y + velocidad;
  if(y>height+radio)
  y=-radio;
  
  image(P,y,height-200,radio+5,radio+5);
  y=y + velocidad;
  if(y>height+radio)
  y=-radio;
}}
