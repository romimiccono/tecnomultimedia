class cangrejo{
  float velocidad=3.0;
  float x=60.0;
  float radio= 60.0;
  int direccion = 1;
  
  cangrejo(){   
  }
void cangrejito(PImage P){
  image(P,x,height/2+230,radio+20,radio+20);
  x=x+velocidad * direccion;
  if((x>width-radio)||(x<radio))
  direccion=-direccion;{
 
}
}}
