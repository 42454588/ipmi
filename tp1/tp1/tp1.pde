PImage miEspada;
void setup(){
  size(800,400);
  miEspada = loadImage("espada.jpg");
}

void draw (){
  background(#555351);
  image(miEspada,0,0);
  //funda
  fill(#6C4115);
  stroke(#6C4115);
  triangle(39,354,45,327,68,348);
  quad(45,327,309,85,326,88,68,348);
  quad(307,86,325,71,328,75,334,78);
  quad(328,76,334,77,324,90,307,86);
  
  //punta funda
  fill(#CEC7BF);
  stroke(#CEC7BF);
  quad(326,70,348,55,351,55,350,58);
  quad(335,76,328,74,326,70,350,59);
  
  //filo
  fill(#CEC7BF);
  stroke(#CEC7BF);
  quad(16,14,27,20,31,29,25,30);
  quad(28,20,47,39,43,52,25,30);
  quad(41,50,46,38,105,98,96,113);
  quad(91,108,105,98,228,232,216,244);
  triangle(241,275,250,271,244,282);
  triangle(264,267,253,269,257,263);
  quad(213,241,225,229,248,252,231,264);
  quad(230,263,247,251,256,259,236,272);
  quad(235,271,256,259,257,263,252,270);
  quad(242,275,236,273,256,259,252,270);
  
  //parte entre el mango y el filo
  
  //mango parte marrón
  fill(#6C4115);
  stroke(#6C4115);
  quad(255,288,267,277,330,352,322,361);
  //mango parte plateada
  fill(#9D9B98);
  stroke(#9D9B98);
  quad(323,362,331,354,339,363,332,371);
  quad(339,363,352,371,337,379,332,371);
  quad(337,379,352,371,353,377,345,384);
  quad(353,377,353,377,354,383,348,388);
  quad(343,384,352,377,347,387,344,385);
  

  // imprime en consola la posicion del mouse
  println( mouseX + " / " + mouseY );
}
