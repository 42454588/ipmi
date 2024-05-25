// Aaron Gimeno Casasco, comision 4, Trabajo Practico 2
//variables
int estado;
PImage imagen1;
PImage imagen2;
PImage imagen3;
PImage imagen4;

PFont marcos;

String text1;
String text2;
String text3;
String text4;

int juanito;

void setup(){
  size (640,480);
  estado = 0;
  juanito = 30;
  //cargamos las imagenes
  imagen1 = loadImage("imagen1.jpg");
  imagen2 = loadImage("imagen2.jpg");
  imagen3 = loadImage("imagen3.jpg");
  imagen4 = loadImage("imagen4.jpg");
  //asignamos a marquitos
  marcos = loadFont("marcos.vlw");
  textFont(marcos);
  textAlign(CENTER,CENTER);

  text1 = "Sourou no Frieren \n la historia que avanza sin los que amamos...";
  text2 = "en esta historia de fantasía y aventuras \n conocemos a Frieren, una elfa que fue parte del grupo \n del gran heroe, ayudando a derrotar al rey demonio";
  text3 = "al ser frieren un ser ageno al tiempo, \n sus vinculos tienden a ser desplazados, \n o poco memorables \n por lo que al morir el heroe, \n comienza a replantearse \n que tan importante es la gente en su vida. \n al empezar su nueva aventura, \n le acompañaran su nueva discípula \n y el guerrero que  heredaria la voluntad de su compañero. ";
  text4 = "esto les llevaria a recorrer el mundo \n en busca de magias perdidas, \n y de sus seres queridos \n encontrando una verdad casi olvidada para ella: \n todo tiempo compartido con alguien, \n es igual de importante. ";
}

void draw(){
  println(mouseX+" a "+mouseY+" a "+estado+" a "+frameCount/60);

  if(estado == 0){ 
    image(imagen1,0,0,640,480);
    textSize(juanito);
    fill(255,255,255);
    text(text1,320,frameCount/1);

    if(frameCount/60 >= 8){
      estado = 1;
      frameCount = 0;
    }
  }
  
  if(estado == 1){ 
    image(imagen2,0,0,640,480);
    textSize(juanito-5);
    fill(255,255,255);
    text(text2,frameCount/1,240);

    if(frameCount/60 >= 8){
      estado = 2;
      frameCount = 0;
    }
  }

  if(estado == 2){ 
    image(imagen3,0,0,640,480);
    textSize(juanito-5);
    fill(255,255,255);
    text(text3,320,480-frameCount/1);

    if(frameCount/60 >= 8){
      estado = 3;
      frameCount = 0;
    }
  }

  if(estado == 3){ 
    image(imagen4,0,0,640,480);
    textSize(juanito-5);
    fill(255,255,255);
    text(text4,640-frameCount/1,240);
    
    // Añadimos el texto para reiniciar en la esquina inferior derecha
    textSize(juanito-5);
    fill(255, 255, 255);
    text("Restart", width - 50, height - 20);
  }
}

void mouseClicked() {
  // esquina inferior derecha.
  if (estado == 3 && mouseX > width - 100 && mouseY > height - 50) {
    estado = 0;
    frameCount = 0;
  }
}
