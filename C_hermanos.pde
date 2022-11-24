class Hermanos{
  int Yh, tam;
  float  Xh, vel;
  PImage HermanosImg;
  boolean TOCAR;

 Hermanos(PImage HermanosImg, int Yh, int tam) {
    this.HermanosImg=HermanosImg;
    this.Yh=Yh;
    this.tam=tam;
    Xh = random(0, width);
    vel = random(1, 5);
    TOCAR = false;
  }
  
   void dibujoDeHer() {//dibujo de Mabel y Dipper
    pushStyle();
    imageMode(CENTER);
    image(HermanosImg, Xh, Yh, tam, tam);
    popStyle();
    HermanitosSeMueven();
   }
   
   void HermanitosSeMueven() {
    if (Yh > height - tam/2 || TOCAR) { //si sale de la ventana o lo matan se reinicia
      Yh = 0;
      Xh = random(width);
      vel = random(2, 4);
       TOCAR = false;
       }
    Yh+= vel;
  }
  
   void SIYATOQUE() {
     TOCAR = true;
   }
   
}
