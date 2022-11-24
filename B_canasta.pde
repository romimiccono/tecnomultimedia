class Canasta {
  PImage canastaFoto;
  int Xc, Yc, TcPropiedad;//ejemplo para el uso de: this.*
  boolean ACTIVARCOLISION; //Con esta propiedad reviso si mi personaje toco algo, mientras no toque nada es falso
  //aclaracion: las propiedades creadas antes del constructor de la clase se pueden utilizar cuantas veces queramos, en cada void se le da distinto valor gracias al this.

  
  Canasta(PImage canasta, int Tcparametro) {
    this.canastaFoto = canasta;//*se utiliza this. para llamar a alguna variable creada antes del constructor, así se la puede igualar con una variable usada dentro del parámetro del constructor(deben ser del mismo tipo). 
    this.TcPropiedad = Tcparametro;
    Yc = height - TcPropiedad/4; //esta es la ubicación de la canasta en Y, yo lo que hago con esto, es anclar la canasta en el "piso" de la ventana y para luego verla voy restarle a Y el tamaño de la imagen
    ACTIVARCOLISION = false;
  }

  void DibujoMiCanasta(int Xc) {//el parametro del metodo dibujarCanasta es lo que luego voy a reemplazar con su posicion en X con el mouseX, basicamente asi la voy a poder mover
    this.Xc=Xc;
    pushStyle();
    imageMode(CENTER);
    image(canastaFoto, Xc, Yc, TcPropiedad,TcPropiedad);// y luego eso lo uso
    popStyle();
  }
}
