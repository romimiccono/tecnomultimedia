void setup(){
  size (600, 600);
  background (#90CEFF); //color del cielo
}

void draw(){
  fill (#7C3001); //color café tierra
  rect (0,500,800,100); //tierra
  
  //muñeco de nieve
  fill (255,255,255); //color blanco muñeco
  stroke (1);
  circle (300,400,250);
  circle (300,300,200);
  circle (300,200,150);
  
  fill(0); //ojos
  circle (250,200,10); //ojo izquierdo
  circle (350,200,10); //ojo derecho
  
  fill(0); //botones
  circle (300,300,30); //1ero
  circle (300,350,30); //2do
  circle (300,400,30); //3ero
  
  fill(#F2881D);
  triangle (300, 225, 310, 200, 210, 230); //nariz
  
  fill(#F0F0F0); //adentro de botones
  circle (300,300,10);
  circle (300,350,10); 
  circle (300,400,10);
  
  stroke(#FFFFFF);
  fill(#FFFFFF); //nieve
  circle (500,300,10);
  circle (500,200,10);
  circle (100,200,10);
  circle (150,250,10);
  circle (150,350,10);
  circle (90,350,10);
  circle (420,250,10);
  circle (50,250,10);
  circle (20,150,10);
  circle (300,250,10);
  circle (500,100,10);
  circle (70,430,10);
  circle (300,100,10);
  circle (200,100,10);
  circle (400,150,10);
  circle (550,250,10);
  circle (450,320,10);
  circle (500,420,10);
  
  //nubes
  ellipse(0,0,200,100);
  ellipse(100,0,300,200);
  ellipse(350,0,400,200);
  ellipse(350,0,400,200);
  ellipse(500,0,300,200);
  
  //sombrero
  fill(#050402);
  stroke(0);
  rect(250,80,100,80);
  fill(#050402);
  ellipse(300,150,200,30);
  
}
