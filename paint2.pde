color c=-1;
int a;
boolean o;
int m=10;
boolean t;
boolean bajar=false;
void setup() {
  size(510, 510);
  background(255);
}
void draw() {

  stroke(0);
  line(-10, 170, 520, 170);
  if (bajar==true) {

    if (mouseY>=170+m/2 && mouseY<480-m/2) {
      noStroke();
      fill(c, 254);
      ellipse(mouseX, mouseY, m, m);
      
    }
  }
  if (t==true) {
    noStroke();
    fill(255);
    rect(0, 170+1, 510, 510-170);
    t=false;
  }
  int e=round(random(255));
  int i=round(random(255));

  rotate((PI/4));
  translate(107-181.5, -255-181.5);
  stroke(0, e, i);
  line(510-255/2, 255/2, 510-255+i, e);

  stroke(e, i, 0);
  line(255, 255, 255/2+i, 255/2+ e);

  stroke(i, 0, e);
  line(255/2, 510- 255/2, i, e+510-255);
  e=round(random(255));
  i=round(random(255));
  stroke(0, e, i);
  line(510-255/2, 255/2, 510-255+i, e);

  stroke(e, i, 0);
  line(255, 255, 255/2+i, 255/2+ e);

  stroke(i, 0, e);
  line(255/2, 510- 255/2, i, e+510-255);




  translate(-(107-181.5), -(-255-181.5));
  rotate(-(PI/4));

  stroke(0);
  line(0, 480, 510, 480);
  fill(0);
  textAlign(LEFT);
  text("color marcado: ", 7.5, 500);
  text("tamaño: ", 190, 500);
  text("lapiz: ", 280, 500);
  text("lapiz: ", 280, 500);
  if (bajar==true) {
    noStroke();
    fill(255);
    rect(320, 490, 45, 13);
    fill(255, 0, 0);
    text("bajado", 320, 500);
  } else {   
    noStroke();
    fill(255);
    rect(320, 490, 45, 13);
    fill(255, 0, 0);
    text("subido", 320, 500);
  }
  fill(c);
  noStroke();
  rect(100, 483, 75, 25, 100);
  stroke(0);
  line(255-(m/2), 496, 255+(m/2), 496);
  line(255-(m/2), 491, 255-(m/2), 501);
  line(255+(m/2), 491, 255+(m/2), 501);
  fill(255);
  noStroke();
  rect(255-(m/2)+1, 491, m-1.5, 5);
  rect(255-(m/2)+1, 496+1, m-1.5, 5);
  rect(255-(m/2)-1, 491, 1, 11);
  rect(255+(m/2)+1, 491, 1, 11);
}

void mousePressed() {
  if (mouseX<510 && mouseY<175) {
    c=get(mouseX, mouseY);
  }
}
void keyPressed() {
  if (key==ENTER) {
    if (bajar==true) {
      bajar=false;
    } else {
      bajar=true;
    }
  }
  if (key=='b') {
    m++;
  }
  if (key=='s') {
    m--;
  }
  if (key=='d') {

    t=true;
  }
}
