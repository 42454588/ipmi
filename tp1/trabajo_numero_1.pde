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
  triangle(439,354,445,327,468,348);
  quad(445,327,709,85,726,88,468,348);
  quad(707,86,725,71,728,75,734,78);
  quad(728,76,734,77,724,90,707,86);

  //punta funda
  fill(#CEC7BF);
  stroke(#CEC7BF);
  quad(726,70,748,55,751,55,750,58);
  quad(735,76,728,74,726,70,750,59);

  //filo
  fill(#CEC7BF);
  stroke(#CEC7BF);
  quad(416,14,427,20,431,29,425,30);
  quad(428,20,447,39,443,52,425,30);
  quad(441,50,446,38,505,98,496,113);
  quad(491,108,505,98,628,232,616,244);
  triangle(641,275,650,271,644,282);
  triangle(664,267,653,269,657,263);
  quad(613,241,625,229,648,252,631,264);
  quad(630,263,647,251,656,259,636,272);
  quad(635,271,656,259,657,263,652,270);
  quad(642,275,636,273,656,259,652,270);

  //parte entre el mango y el filo
  fill(#CEC7BF);
  stroke(#CEC7BF);
  triangle(651,270,673,269,645,291);
  triangle(630,299,646,282,644,292);
  triangle(609,316,607,312,633,299);
  triangle(607,311,612,303,631,297);
  triangle(661,267,682,259,673,269);
  triangle(678,259,692,249,682,260);
  triangle(684,253,691,243,700,239);
  quad(693,246,702,239,704,241,695,248);
  quad(687,251,701,239,703,242,688,254);
  triangle(615,302,646,290,618,310);
  triangle(689,245,692,249,677,261);
  triangle(704,241,705,247,682,259);
  //detalles generales
  fill(#9DA5AD);
  stroke(#9DA5AD);
  triangle(453,55,655,269,646,278);
  fill(#8A8E93);
  stroke(#8A8E93);
  triangle(641,288,649,268,654,274);
  triangle(652,269,670,264,656,275);
  triangle(456,58,654,267,648,271);
  triangle(652,272,666,268,646,286);
   fill(#CEC7BF);
  stroke(#CEC7BF);
  triangle(645,286,653,275,666,270);
  
  
  
  //mango parte marrón
  fill(#6C4115);
  stroke(#6C4115);
  quad(655,288,667,277,730,352,722,361);
  //mango parte plateada
  fill(#9D9B98);
  stroke(#9D9B98);
  quad(723,362,731,354,739,363,732,371);
  quad(739,363,752,371,737,379,732,371);
  quad(737,379,752,371,753,377,745,384);
  quad(753,377,753,377,754,383,748,388);
  quad(743,384,752,377,747,387,744,385);


  // imprime en consola la posicion del mouse
  println( mouseX + " / " + mouseY );
}
