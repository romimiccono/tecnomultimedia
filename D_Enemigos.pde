class Obstaculos{
int Ye, tam;
  float  Xe, vel;
  PImage EnemigoImg;
  boolean TOCAR;


Obstaculos(PImage EnemigoImg, int Ye, int tam) {
    this.EnemigoImg=EnemigoImg;
    this.Ye=Ye;
    this.tam=tam;
    Xe = random(0, width);
    vel = random(1, 5);
    TOCAR = false;
  }
  
   void dibujoDeObstaculos() {//dibujo de Mabel y Dipper
    pushStyle();
    imageMode(CENTER);
    image(EnemigoImg, Xe, Ye, tam, tam);
    popStyle();
    VillanosSeMueven();
   }
   
   void VillanosSeMueven() {
    if (Ye > height - tam/2 ||TOCAR) { //si sale de la ventana o lo matan se reinicia
      Ye = 0;
      Xe = random(width);
      vel = random(2, 4);
       TOCAR = false;
       }
    Ye+= vel;
  }
  
   void SIYATOQUE() {
     TOCAR = true;
   }

}
