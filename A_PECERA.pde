class principal{
  peces pez;
  cangrejo cangre;
  PImage[]perso;
  int estado;
  int px,py;
  
principal(){
  cangre= new cangrejo();
  pez= new peces();
  perso= new PImage[5];
  px=width/2;
  py=100;
  estado=1;
  px=-10;
  py=-20;

 //carga de imagenes
perso[0]=loadImage("pecera.jpg");
 perso[0].resize(700,650);
perso[1]=loadImage("pecera2.jpg");
 perso[1].resize(700,650);
perso[2]=loadImage("nemo.png");
 perso[2].resize(100,100);
perso[3]=loadImage("azulito.png");
 perso[3].resize(100,80);
perso[4]=loadImage("cangrejo.png");
 perso[4].resize(100,100);

 }
void dibujo(){
  if(estado==1){
  image(perso[0],px,py);
pez.pecesitos(perso[2]);
cangre.cangrejito(perso[4]);
  }
  if(estado==2){
  image(perso[1],px,py);
pez.pecesitos(perso[3]);
cangre.cangrejito(perso[4]);
  }
 }
void interaccion(){
 println(mouseX,mouseY);
if(estado==1&&key==CODED){
  estado=2;
}
if(estado==2&&keyCode==UP){
  estado=1;
}}}
