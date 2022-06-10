//https://youtu.be/zq-f3xyqozc

float pr;
int cant=20,frames=60;
int estado;

void setup(){
  size(800,600);
  estado=0;
}
void draw(){
   ilusionOpticaEinicio();
}
//activar boton
void mouseClicked(){
  if(mouseX>300&&mouseY<310&&mouseX<600&&mouseY>260){
    estado=1;
  }
}
void keyPressed(){
  //reinicio
  if(key==' '){
    estado=0;
    frames=60;
    cant=20;
  //efectos
  }
  if(estado==1&&key=='a'){
    background(#607CC6);
  }
  if(estado==1&&key=='b'){
    background(255);
  }
  if(estado==1&&key=='c'){
    background(255,0,0);
  }
}
