//https://youtu.be/sEmjjEQFJI4
principal Pecera;

void setup(){
  size(600,600);
  Pecera= new principal();
}

void draw(){
 Pecera.dibujo();
}
void keyPressed(){
 Pecera.interaccion();
}
