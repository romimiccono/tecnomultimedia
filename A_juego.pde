class Principal {
  Hermanos[] hermanito1=new Hermanos[2];
  Hermanos[] hermanito2=new Hermanos[2];
  Obstaculos[] villano1 =new Obstaculos[2];//EJEMPLO CON FOR
  Obstaculos[] villano2 =new Obstaculos[2];
  Canasta canasta;

  PImage[] imagenes;
  boolean boton=true;
  int estado, px, py;
  int puntos;
  PFont fuente;
  PFont fuente1;

  Principal() {

    imagenes= new PImage[18];
    puntos = 0;
    estado =0;
    fuente=loadFont("ShowcardGothic-Reg-48.vlw");
    textFont(fuente);
    fuente1=loadFont("OCRAExtended-48.vlw");


    //carga de imagenes
    imagenes[0]= loadImage("bill.png");
    imagenes[1]= loadImage("dipper.png");
    imagenes[2]= loadImage("duende.png");
    imagenes[3]= loadImage("gideon.png");
    imagenes[4]= loadImage("mabel.png");
    imagenes[5]= loadImage("ganaste.png");
    imagenes[6]= loadImage("home.png");
    imagenes[7]= loadImage("perdiste.png");
    imagenes[8]= loadImage("titulo.png");
    imagenes[9]= loadImage("menu1.png");
    imagenes[10]= loadImage("gravitygame.png");
    imagenes[11]= loadImage("Cm.png");
    imagenes[12]= loadImage("fondo2.jpg");
    imagenes[13]= loadImage("botonBack.png");//back/regresar
    imagenes[14]= loadImage("botonReturn.png");//reiniciar juego
    imagenes[15]= loadImage("botonSonidoOn.png");//play musica
    imagenes[16]= loadImage("botonSonidoOff.png");//mute juego
    imagenes[17]= loadImage("instrucciones.png");
    canasta= new Canasta(imagenes[11], 150);


    //EJEMPLO CON FOR
    for (int i =0; i < villano1.length; i++) { //Usa el for para CREAR varios objetos iguales
      villano1[i] = new Obstaculos(imagenes[0], py, 100);
    }   
    for (int a =0; a < villano2.length; a++) { //Usa el for para CREAR varios objetos iguales
      villano2[a] = new Obstaculos(imagenes[3], py, 100);
    }

    for (int b =0; b < hermanito1.length; b++) { //Usa el for para CREAR varios objetos iguales
      hermanito1[b] = new Hermanos(imagenes[1], px, 100);


      for (int e =0; e < hermanito1.length; e++) { //Usa el for para CREAR varios objetos iguales
        hermanito2[e] = new Hermanos(imagenes[4], px, 100);
      }
    }
  }

  void dibujo() {

    //PANTALAL DE INICIO
    if (estado==0) {
      player2.pause();
      player3.pause();
      player.pause();
      textFont(fuente);
      image(imagenes[10], 0, 0);
      imagenes[10].resize(600, 600);
      image(imagenes[2], 200, 410);
      imagenes[2].resize(200, 200);

      //BOTONES DE INICIO:
      strokeWeight(3);
      fill(#E9F26E);
      rect(200, 350, 200, 50);
      rect(200, 280, 200, 50);
      rect(200, 210, 200, 50);

      fill(#504E49);
      textSize(45);
      text("JUGAR", 225, 250);

      fill(#504E49);
      textSize(25);
      text("instrucciones", 205, 320);

      fill(#504E49);
      textSize(30);
      text("creditos", 230, 390);
    }

    //PANTALLA DE JUEGO

    if (estado==1) {
       player2.rewind();
       player3.rewind();
       
      image(imagenes[9], -5, -40);  

      //puntos
      fill(250);
      textSize(20);
      text("PUNTUACIÓN:"+ puntos, 13, 30);

      //movimiento de la canasta

      for (int i =0; i < villano1.length; i++) {//USO un for para DIBUJAR TODOS MIS ENEMIGOS
        villano1[i].dibujoDeObstaculos();
      }
      //EJEMPLOCONFOR

      for (int i =0; i < villano2.length; i++) {//USO un for para DIBUJAR TODOS MIS ENEMIGOS
        villano2[i].dibujoDeObstaculos();
      }

      for (int i =0; i < hermanito1.length; i++) {//EJEMPLOCONFOR
       hermanito1[i].dibujoDeHer();
      }
      for (int i =0; i < hermanito2.length; i++) {//EJEMPLOCONFOR
        hermanito2[i].dibujoDeHer();
      }

      canasta.DibujoMiCanasta(mouseX);
      colisionRESTA();
      colisionSUMAR();

      //BOTONES PARA EL JUEGO:
      //Para volver al menu:
      image(imagenes[6], 550, 25);
      imagenes[6].resize(40, 35);

      //Para Activar/desactivar musica:
      if (boton==true) {
        image(imagenes[15], 505, 24);
        imagenes[15].resize(40, 38);
      }

      //Para desactivar musica
      if (boton==false) {
        player.pause();
        image(imagenes[16], 505, 24);
        imagenes[16].resize(40, 38);
      }
    }

    //PANTALLA DE INSTRUCCIONES:
    if (estado==2) {
      player.pause();
      textFont(fuente1);
      image(imagenes[17], -70, -50);  
      image(imagenes[8], -10, 20);  
      imagenes[8].resize(220, 120);

      //boton de BACK en instrucciones:

      image(imagenes[13], 521, 27);
      imagenes[13].resize(63, 58);

      fill(#B9E5C6);
      textSize(25);
      text("¡Atrapa a Dipper y Mabel!", 80, 170);
      textSize(20);
      text("Si atrapas a Bill o Guideon se van", 80, 200);
      text("descontando puntos...cuidado", 80, 230);
      text("¡Quieren destruir Gravity Falls!", 80, 260);
      text("Obten 15 puntos para ganar", 80, 360);
      text("Si te quedas con -5 puntos, pierdes:( ", 80, 390);
    }

    //PANTALLA DE CREDITOS:
    if (estado==3) {
      player.pause();
      textFont(fuente1);
      image(imagenes[12], 0, 0); 
      imagenes[12].resize(600, 600);
      textSize(22);
      fill(0);
      text("TECNOLOGÍA MULTIMEDIAL 1", 110, 200);
      text("Trabajo práctico 5", 140, 230);
      text("Comisión 2 - Matías Jauregui Lorda", 80, 260);
      text("María Sol Paloma 91346/6", 120, 290);
      text("Romina Miccono 91444/7", 120, 320);

      image(imagenes[13], 521, 27);
      imagenes[13].resize(63, 58);
    }

    //PANTALLA DE GANASTE
    if (estado==4) {
      player.pause();
      image(imagenes[5], 0, 0);
      imagenes[5].resize(600, 600);
      player2.pause();
      player3.play();
      player.rewind();
    }

    //PANATLLA DE PERDISTE
    if (estado==5) {
      player.pause();
      image(imagenes[7], 0, 0);
      imagenes[7].resize(600, 600);
      player2.play();
      player3.pause();
      player.rewind();
    }
  }

  void colisionRESTA() {
    for (int i = 0; i < villano1.length; i++) {

      float Distancia = dist(canasta.Xc, canasta.Yc, villano1[i].Xe, villano1[i].Ye);
      if (Distancia < villano1[i].tam/2 + canasta.TcPropiedad/5) {
        canasta.ACTIVARCOLISION = false;//propiedad del personaje
        villano1[i].SIYATOQUE(); //Metodo del enemigo
        puntos--;
      }  

      for (int a = 0; a< villano2.length; a++) {

        float Dist= dist(canasta.Xc, canasta.Yc, villano2[a].Xe, villano2[a].Ye);
        if (Dist < villano2[a].tam/2 + canasta.TcPropiedad/5) {
          canasta.ACTIVARCOLISION = false;//propiedad del personaje
          villano2[a].SIYATOQUE(); //Metodo del enemigo
          puntos--;
        }
      }

      if (puntos==-5) {
        println(mouseX, mouseY);
        estado=5;
      }
    }
  }

  void colisionSUMAR() {

    for (int b = 0; b< hermanito1.length; b++) {

      float Dist = dist(canasta.Xc, canasta.Yc, hermanito1[b].Xh, hermanito1[b].Yh);
      if (Dist < hermanito1[b].tam/2 + canasta.TcPropiedad/5) {
        canasta.ACTIVARCOLISION = false;//propiedad del personaje
        hermanito1[b].SIYATOQUE(); //Metodo del enemigo
        puntos++;
      }
    }

    for (int c = 0; c< hermanito2.length; c++) {

      float Dist = dist(canasta.Xc, canasta.Yc, hermanito2[c].Xh, hermanito2[c].Yh);
      if (Dist < hermanito2[c].tam/2 + canasta.TcPropiedad/5) {
        canasta.ACTIVARCOLISION = false;//propiedad del personaje
        hermanito2[c].SIYATOQUE(); //Metodo del enemigo
        puntos++;
      }
      if (puntos==15) {
        estado=4;
      }
    }
  }

  void interaccion() {

    println(mouseX, mouseY);
    if (estado==0) {
      if (mouseX>201 && mouseX<397 && mouseY>211 && mouseY<283) { estado=1;}
      reinicio();
    }

    if (mouseX>203 && mouseX<399 && mouseY>284 && mouseY<327) { estado=2;}

    if (mouseX>203 && mouseX<396 && mouseY>353 && mouseY<396) { estado=3;}


    if (estado==1) {
      if (mouseX>552&& mouseX<587&& mouseY>25 && mouseY<58) {
        estado=0;
        player.rewind();
      
      }//boton home
      
      if (mouseX>512&& mouseX<539 && mouseY>28 && mouseY<55) {  //boton sonido
        if (boton==false) {
          boton=true;
        } else {
          boton=false;
        }
      }
    }

    if (estado==2) {
      if (mouseX>527 && mouseX<575 && mouseY>32 && mouseY<76) {estado=0;}
    }

    if (estado==3) {
      if (mouseX>527 && mouseX<575 && mouseY>32 && mouseY<76) {estado=0;}
    }


    if (estado==4) {//ganaste
      if (mouseX>26 && mouseX<91 && mouseY>24 && mouseY<96) {estado=0;}//boton Home
      if (mouseX>508 && mouseX<568 && mouseY>27 && mouseY<84) {estado=1;}//boton juego
      reinicio();
    }

    if (estado==5) {//perdiste
      if (mouseX>26 && mouseX<91 && mouseY>24 && mouseY<96) {estado=0;}
      if (mouseX>508 && mouseX<568 && mouseY>27 && mouseY<84) {estado=1;}
      reinicio();
    }
  }
    
    void reinicio(){
       puntos=0;
     for (int i =0; i < villano1.length; i++) { //Usa el for para CREAR varios objetos iguales
      villano1[i] = new Obstaculos(imagenes[0], py, 100);
    }   
    for (int a =0; a < villano2.length; a++) { //Usa el for para CREAR varios objetos iguales
      villano2[a] = new Obstaculos(imagenes[3], py, 100);
    }

    for (int b =0; b < hermanito1.length; b++) { //Usa el for para CREAR varios objetos iguales
      hermanito1[b] = new Hermanos(imagenes[1], px, 100);


      for (int e =0; e < hermanito2.length; e++) { //Usa el for para CREAR varios objetos iguales
        hermanito2[e] = new Hermanos(imagenes[4], px, 100);
      }
    }
    
    }
  
    void play() {
      if (player.isPlaying() )
      {
        player.pause();
      } else
      {
        player.play();
      }
      player.rewind();
    }
    
    }
