void ilusionOpticaEinicio(){
  background(0);
  stroke(255);
  noFill();
   //inicio
  if(estado==0){
    background(0);
     for(int c=550; c>0; c-=20){
    ellipse(width/2, height/2, c,c); 
  }
    fill(#ECF50A);
    rect(300,260,200,50);
    fill(0);
    text("HAGA CLICK AQUÍ",315,290);
    textSize(20);
  }else if(estado==1){
  for(int i=0; i<cant; i++){
    pushStyle();
    float a = 600*1/cant;
    float ab= i*a;
    float bc= map(sin(pr+TWO_PI/cant*i),-1,3,1,a*1);
    strokeWeight(bc);
    ellipse(width/2, height/2, ab, ab);  
    popStyle();
  }
  pr-=TWO_PI/frames;
  } 
}
