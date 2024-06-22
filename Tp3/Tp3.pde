//Aaron Gimeno Casasco, comision 4, Trabajo Practico 3
//https://youtu.be/SEJ5bw8ip7Q

//10 columnas de width  40 de ancho el rect
//38 de height  10.52 de alto al rect

int cant1,cant2,cant3,cant4;
float alto, ancho;
PImage obrA;
color tege,emi;



void setup () {
  size(800,400);
  rectMode(CORNER);
  background(0);
  cant1 = 10;
  cant2 = 40;
  cant3 = 24;
  cant4 = 6;
  alto = 10.62;
  ancho = 400/10;
  obrA = loadImage("obrA.png");
  tege=color(255);
  emi=color(0);
}

void draw (){
  image(obrA,0,0);

  dibujarFondo();

  dibujarCuadro(emi,tege);

  println(mouseX + "/" + mouseY);
  println(alto);
  

}

void keyPressed(){
  if(key=='e'){
   emi= color(random(255),random(255),random(255));
   tege= color(random(255),random(255),random(255));
  }
}

void mousePressed(){
 tege=color(255);
  emi=color(0);
}
