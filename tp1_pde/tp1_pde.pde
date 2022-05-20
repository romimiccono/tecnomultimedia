String n = "Alvin y las ardillas";

int alvin;
boolean hayimagen= true;
boolean hayimagen2= true;
boolean hayimagen3= true;
boolean hayimagen4= true;
boolean hayimagen5= true;
boolean hayimagen6= true;
boolean hayimagen7= true;
boolean hayimagen8= true;
boolean hayimagen9= true;
boolean hayimagen10= true;
boolean hayimagen11=true;

 PFont titulo;
 PFont cast;
 PFont creditosizq;
 PFont creditosder;
 PFont creditosizq1;
 PFont creditosder2;
 
PImage fotouno;
PImage primera;
PImage segunda;
PImage tercera;
PImage cuarta;
PImage quinta;
PImage sexta;
PImage siete;
PImage ocho;
PImage nueve;
PImage diez;
PImage once;

void setup(){
  println (frameCount);
  size (1200,700);
  
   //pantall 1
  frameRate(60);  
  titulo = loadFont("ShowcardGothic-Reg-48.vlw");
  fotouno = loadImage("alvin y las ardillas.jpeg");
  
  //pantalla 2
  cast = loadFont ("ShowcardGothic-Reg-48.vlw");
  
  primera= loadImage("ALVIN Y LAS ARDILLAS 1.jpg");
  segunda= loadImage("ALVIN Y LAS ARDILLAS 2.jpg");
  tercera= loadImage("ALVIN Y LAS ARDILLAS 3.jpg");
  cuarta= loadImage("ALVIN Y LAS ARDILLAS 4.jpg");
  quinta= loadImage("ALVIN Y LAS ARDILLAS 5.jpg");
  sexta= loadImage("ALVIN Y LAS ARDILLAS 6.jpg");
  siete= loadImage("ALVIN Y LAS ARDILLAS 7.jpg");
  ocho= loadImage("ALVIN Y LAS ARDILLAS 8.jpg");
  nueve= loadImage("ALVIN Y LAS ARDILLAS 9.jpg");
  diez= loadImage("ALVIN Y LAS ARDILLAS 10.jpg");
  once= loadImage("FINAL.jpg");
  
  
  creditosizq= loadFont("ShowcardGothic-Reg-48.vlw");
  creditosder= loadFont("ShowcardGothic-Reg-48.vlw");
  
  //pantalla 3
  creditosizq1= loadFont("ShowcardGothic-Reg-48.vlw");
  creditosder2= loadFont("ShowcardGothic-Reg-48.vlw");


}


void draw(){
  //parte 1
  alvin=frameCount*2;
  background(0);

  if (hayimagen==true) image(primera,10,920-alvin);
  primera.resize(400,400);
  if (hayimagen2==true) image(segunda, 750, 1150-alvin);
  segunda.resize(400,400);
  if (hayimagen3==true) image(tercera, 10, 2300-alvin);
  tercera.resize(350,350);
  if (hayimagen4==true) image(cuarta, 800, 2500-alvin);
  cuarta.resize(350,350);
  if (hayimagen5==true) image(quinta,5, 4250-alvin);
  quinta.resize(270,270);
  if(hayimagen6==true) image(sexta, 800, 3800-alvin);
  sexta.resize(300,300);
  if(hayimagen7==true) image(siete, 800, 5000-alvin);
  siete.resize(300,300);
  if(hayimagen8==true) image(ocho, 5, 5100-alvin);
  ocho.resize(300,300);
  if(hayimagen9==true); image(nueve,5, 6100-alvin);
  nueve.resize(250,250);
  if(hayimagen10==true); image(diez,850,5800-alvin);
  diez.resize(250,250);
  if(hayimagen11==true); image(once,350,6800-alvin);
  once.resize(450,450);
  
  
  textFont(titulo, 50);
  fill(255);
  text("Alvin y las ardillas",350,450-alvin);
 
  println(frameCount);
  fotouno.resize(350,250);
  image( fotouno, 430,500 -alvin);
  
  
   //parte 2
  fill(255,0,0);
  stroke(255,255,255);
  textFont(cast, 25);
  text("CAST",550,800 -alvin);
 
  fill(#F4FFB9);
  textFont(creditosizq, 20);
  text("Dave", 510, 810, 750,-alvin);
  text("Ian", 525, 850, 750, -alvin);
  text("Claire",490, 890, 750, -alvin);
  text("Gail",515,930,750,-alvin);
  text("Voice of Alvin", 400, 970,750, -alvin);
  text("Voice of Simon",395,1010,750, -alvin);
  text("Voice of Theodore",350,1050,750, -alvin);
  text("Female interns 1,2,3",345,1090,750, -alvin);
  text("amv",510, 1210, 750, -alvin);
  text("Mother in store", 370, 1250, 750, -alvin);
  text("Vet",515,1290,750, -alvin);
  text("Engineer", 455, 1330, 650, -alvin); 
  text("Director", 450, 1370, 650, -alvin);
  text("Ted",510,1410, 650,-alvin);
  text("Barry", 480, 1450, 650, -alvin);
  text("Photographer", 385, 1490, 650, -alvin);
  text("Butler", 470, 1530, 650, -alvin);
  text("Segurity Guard", 375, 1570, 650, -alvin);
  text("Press Coordinator", 340, 1610, 650, -alvin);
  text("As Herself", 430, 1650, 650, -alvin);
  text("Dj", 520, 1690, 650, -alvin);
  text("French Doll",410, 1730, 650,-alvin);
  text("Spanish Doll",405, 1770, 650,-alvin);
  text("Choreographer",370, 1810, 650, -alvin);
  text("Dancers", 455, 1850, 650, -alvin);
  text("Stunt coordinator", 330, 2130, 650, -alvin);
  text("stunts", 465, 2170, 650, -alvin);

  if(mouseX>=width/2){
    fill(255,0,0);
  }else{
    fill(255);
  }
  textFont(creditosder, 20);
  text("Jason Lee", 600, 810, 650, -alvin);
  text("David Cross", 600, 850, 750, -alvin);
  text("Cameron Richardson",600, 890, 750, -alvin);
  text("Jane Lynch",600,930,750,-alvin);
  text("Justin Long", 600, 970,750, -alvin);
  text("Matthew Gray Bubler",600,1010,750, -alvin);
  text("Jesse McCartney",600,1050,750, -alvin);
  text("Allison Karman",600,1090,750, -alvin);
  text("Tiara Parker",600,1130,750, -alvin);
  text("Kira Verrastro",600,1170,750, -alvin);
  text("Veronica Alicio",600, 1210, 750, -alvin);
  text("Beth Riesgraf", 600, 1250, 759, -alvin);
  text("Adriane Delox",600,1290,750, -alvin);
  text("Don Tiffany", 600, 1330, 650, -alvin); 
  text("Lorne Green", 600, 1370, 650, -alvin);
  text("Kevin Symons",600,1410, 650,-alvin);
  text("Frank Maharajh", 600, 1450, 650, -alvin);
  text("Greg Siebel", 600, 1490, 650, -alvin);
  text("Oliver Muirhead", 600, 1530, 650, -alvin);
  text("Jayden Lund", 600, 1570, 650, -alvin);
  text("Erin Chambers", 600, 1610, 650, -alvin);
  text("Jillian Reynolds", 600, 1650, 650, -alvin);
  text("Chris Classic", 600, 1690, 650, -alvin);
  text("Adam Riancho",600, 1730, 650,-alvin);
  text("Axel Alba",600, 1770, 650,-alvin);
  text("Roseo McCoy",600, 1810, 650, -alvin);
  text("Alexis A. Boy-criscilla crossland", 600, 1850, 650, -alvin);
  text("Kevin Fisher-kyndra binkie reevey", 600, 1890, 650, -alvin);
  text("Tucker barkley-celestina", 600, 1930, 650, -alvin);
  text("Laura edwards-christopher scott",600, 1970, 650, -alvin);
  text("Marquisa Gardner-bryan gaw",600, 2010, 650, -alvin);
  text("Michelle mainscalco jersey-nick drago",600, 2050, 650, -alvin);
  text("Melanie lewis",600, 2090, 650, -alvin);
  text("Jhon moio", 600, 2130, 650, -alvin);
  text("george fisher-john robotham", 600, 2170, 650, -alvin);
  text("buck mcdancer", 600, 2210, 650, -alvin);
  text("rick miller", 600, 2250, 650, -alvin);
  text("debbie evans.leavitt-svetlana markel", 600, 2290, 650, -alvin);
  text("matt leonard-scott prince", 600, 2330, 650, -alvin);
  
  
  //parte 3
  fill(#F4FFB9);
  textFont(creditosizq1, 20);
  text("made in association with", 460, 2720, 750,-alvin);
  
  
  fill(#FFFFFF);
  textFont(creditosizq1, 25);
  text("dune entertainment III LLC", 410, 2750, 750, -alvin);
  
  //2da columna
  fill(#F4FFB9);
  textFont(creditosizq, 20);
  text("Art director",400, 3100, 750,-alvin);
  text("set decorator",385, 3140,750,-alvin);
  text("Assistant art director",290,3180,750,-alvin);
  text("set designer", 405, 3220,750,-alvin);
  text("art department coordinator", 220, 3260,750,-alvin);
  text("graphic designer", 350,3300,750,-alvin);
  text("research consultant", 314,3340,750,-alvin);
  text("art department production assistants",110,3380,650,-alvin);
  text("leadman",450,3420,650,-alvin);
  text("head buyer",411, 3460,650,-alvin);
  text("buyer",468, 3500,650,-alvin);
  text("set dressers",404,3540,650,-alvin);
  text("additional set dressers",274,3620,650,-alvin);
  text("drapers",450,3660,650,-alvin);
  text("swing gang",413,3740,650,-alvin);
  text("on set dresser",378,3820,650,-alvin);
  text("set decoration coordinator",222,3860,650,-alvin);
  text("set decoration production assistant",123,3900,650,-alvin);
  text("A camera operator",321,3960,650,-alvin);
  text("B camera operator",321,4000,650,-alvin);
  text("steadicam operator",311,4040,650,-alvin);
  text("1st assistant A camera",286,4080,650,-alvin);
  text("1st assistant B camera",286,4120,650,-alvin);
  text("2nd assistant A camera",281,4160,650,-alvin);
  text("2nd assistant B camera",281,4200,650,-alvin);
  text("camera loader",371, 4240,650, -alvin);
  text("still photographer",311,4280,650,-alvin);
  text("production sound mixer",261,4320,650,-alvin);
  text("boom operator",361,4360,650,-alvin);
  text("utility sound",376,4400,650,-alvin);
  text("property master",341,4440,650,-alvin);
  text("assistant property masters",221,4480,650,-alvin);
  text("assistant props",356,4520,650,-alvin);
  text("script supervisor",331,4560,650,-alvin);
  text("additional editing",320,4640,650,-alvin);
  //
  fill(#F4FFB9);
  text("sound mixing",365, 5040, 650,-alvin);
   
  if(mouseX>=width/2){
    fill(0,255,0);
  }else{
    fill(255);
  }
  
  textFont(creditosder, 20);
  text("Charlie Daboub", 600,3100,750,-alvin);
  text("Annie d. mcculley",600, 3140,750,-alvin);
  text("lissette schettini",600,3180,750,-alvin);
  text("sharon alshams-evelyne barbier", 600, 3220,750,-alvin);
  text("emily wilson", 600, 3260,750,-alvin);
  text("stephen m. runningen", 600,3300,750,-alvin);
  text("Charline st. charles", 600,3340,750,-alvin);
  text("alyssa feener-sarah cooper",600,3380,650,-alvin);
  text("kim patterson",600,3420,650,-alvin);
  text("head buyer",600, 3460,650,-alvin);
  text("heidi pieh",600, 3500,650,-alvin);
  text("yana nirvana-mario hernandez ",600,3540,650,-alvin);
  text("george c. atamian II-wendell j.joyce ",600,3580,650,-alvin);
  text("hannah hinkel-rick pond-vartan tashjian",600,3620,650,-alvin);
  text("jose felix-leonard s. rothstein", 600,3660,650,-alvin);
  text("regina henderson-saul a. solache",600, 3700,650,-alvin);
  text("mark m. del campo-miguel a. garcia",600,3740,650,-alvin);
  text("susie thompson",600,3780,750,-alvin);
  text("eric kelly",600,3820,650,-alvin);
  text("ilana m. gordon",600,3860,650,-alvin);
  text("michele josue",600,3900,650,-alvin);
  text("peter mercurio",600,3960,650,-alvin);
  text("alan brownstein",600,4000,650,-alvin);
  text("richard crow",600,4040,650,-alvin);
  text("alan disler",600,4080,650,-alvin);
  text("darrin deloach",600,4120,650,-alvin);
  text("tommy tieche",600,4160,650,-alvin);
  text("nathan wilson",600,4200,650,-alvin);
  text("robin l. bursey",600, 4240,650, -alvin);
  text("jaimie trueblood",600,4280,650,-alvin);
  text("david r.b macmillan, cas",600,4320,650,-alvin);
  text("perry dogson",600,4360,650,-alvin);
  text("kevine e. patterson",600,4400,650,-alvin);
  text("emily ferry",600,4440,650,-alvin);
  text("joy taylor",600,4480,650,-alvin);
  text("greg wilkinson-edmond scott ratliff",600,4520,650,-alvin);
  text("rebecca robertson-swaja",600,4560,650,-alvin);
  text("peter s. elliot",600,4640,650,-alvin);
  text("neil manderlberg, a.c.e",600,4680,650,-alvin);
  //
  fill(#FFFFFF);
  text("paul massey",600, 5040, 650,-alvin);
  text("dave giammarco",600, 5080, 650,-alvin);
  
  //cuarta parte
  fill(255,0,0);
  stroke(255,255,255);
  textFont(cast, 25);
  text("second unit",500,5700-alvin);
  
  fill(#F4FFB9);
  textFont(creditosizq, 20);
  text("second unit director of photography", 118,5740,750,-alvin);
  text("first assistant director", 272,5780,750,-alvin);
  text("second assistant director",254,5820,750,-alvin);
  text("set producction assistant",255,5860,750,-alvin);
  text("producction coordinator",260,5900,750,-alvin);
  text("office production assistant",238,5940,750,-alvin);
  text("camera operator",355, 5980, 750,-alvin);
  text("first assistant camera",294, 6020,750,-alvin);
  text("second assistant camera",275, 6060, 750,-alvin);
  text("loader",470, 6100, 750,-alvin);
  text("video assist operator",300,6140,750,-alvin);
  text("script supervisors",332,6180,750,-alvin);
  text("gaffer",470,6240,750,-alvin);
  text("best boy electric",345, 6280,750,-alvin);
  text("set lighting technicians",270,6320,750,-alvin);
  
  if(mouseX>=width/2){
    fill(0,0,255);
  }else{
    fill(255);
  }
  
  textFont(creditosder, 20);
  text("thomas e. ackerman", 600,5740,750,-alvin);
  text("rusty mahmood", 600,5780,750,-alvin);
  text("timothy r. price",600,5820,750,-alvin);
  text("jason kumalo",600,5860,750,-alvin);
  text("charles bolwell, jr",600,5900,750,-alvin);
  text("juan g. perez",600,5940,750,-alvin);
  text("david l. parrish",600, 5980,750,-alvin);
  text("linda gackson",600,6020,750,-alvin);
  text("rob monroy",600, 6060, 750,-alvin);
  text("jeremian kent",600, 6100, 750,-alvin);
  text("david j. mcgraw",600,6140,750,-alvin);
  text("dawn c. dreiling",600,6180,750,-alvin);
  text("sydney gilner",600,6240,750,-alvin);
  text("alan colbert",600,6280,750,-alvin);
  text("andew b. horton",600, 6320,750,-alvin);
  text("manuel manny alvarado-christopher",600,6360,750,-alvin);
  }
  
  //reiniciar
  
  void keyPressed(){ 
    if(keyCode==ENTER){
      alvin=600;
      frameCount=0;
    }
  }
  
  
  
