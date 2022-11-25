//https://youtu.be/ntyx_KCbULA
//Romina Miccono 91444/7
//trabajo realizado junto con Maria Sol Paloma 91346/6

import ddf.minim.*;

Minim minim;
AudioPlayer player;
AudioPlayer player2;
AudioPlayer player3;

Principal juego; 

void setup() {
size(600,600);

juego= new Principal(); 
minim= new Minim(this);
player=minim.loadFile("sonido.mp3");
player2=minim.loadFile("McGucket risa.mp3");
player3=minim.loadFile("ganaste.mp3");
}

void draw(){
juego.dibujo();
}

void mouseClicked(){
juego.interaccion();
player.play();

}
