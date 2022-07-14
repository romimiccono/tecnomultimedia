//https://youtu.be/gtHDr2a-9UM
//Integrantes: Romina Miccono 91444/7 y Maria Sol Paloma 91346/6 
//Realizamos juntas el trabajo pero no son los mismos, cada una le agrego una que otra cosa diferente

String [] mensaje={"¡GANASTE!", "PERDISTE:("};
int puntos=0;
int estado;
//fondo cuadros
int fondo=0;
int colores=0;
//
float y1;
float x1;
float x2;
//imagenes
PImage []escenario= new PImage[4];
PImage [] frutas = new PImage [2];
PFont fuente;
PImage frutillasad;
PImage fresita;
PImage banderines;
//canasta
float Xc, Yc=500, Tc=200;

void setup(){
  
  size(600,600);
  escenario[0]= loadImage("canasta.png");
  escenario[1] = loadImage("suelito.jpg");
  escenario[2]= loadImage("toldo.png");
  escenario[3]= loadImage("frutillitaa.png");
  frutillasad= loadImage("frutillasad.png");
  fresita= loadImage("fresita.png");
  banderines= loadImage("banderines.png");
  
  //comidas
  frutas[1]= loadImage("frutilla.png");
  frutas[0]= loadImage("uva.png");

  estado=0;
  fuente=loadFont("BerlinSansFB-Reg-48.vlw");
}

void draw(){
  
  println(estado);
  
  //funciones
  inicio();
  pantallaCreditos();
  jugando();
  ganaste(220,120,70,530);
  perdiste(200,60,50,500);
  
}
void mouseClicked(){ //activar boton
if(mouseX>160&&mouseY<345&&mouseX<350&&mouseY>310){
  estado=1;
}
 if(mouseX>200&&mouseX<380&& mouseY>380&&mouseY<430){
  estado=2;
 }
}

void keyPressed(){
  //reinicio
  if(estado==1&&key=='r'){
    estado=0;
    puntos=0;
  }
  if(estado==2&&key==ENTER){
    estado=0;
    puntos=0;
  }
    if(estado==3&&key==' '){
    estado=0;
    puntos=0;
  }
    if(estado==4&&key=='i'){
    estado=0;
    puntos=0;
  }
}
