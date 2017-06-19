color c;
int a;
  boolean o;
  int m;
  boolean t;
void setup() {
  size(510, 510);
  background(255);
}
void draw() {

stroke(0);
  line(-10,175,520,175);
if(mouseY>=175+m/2){
  noStroke();
fill(c,254);
ellipse(mouseX,mouseY,m,m);
}
  if(t==true){
noStroke();
fill(255);
rect(0,175+1,510,510-175);
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
 

println(c);

}
void mousePressed(){
c=get(mouseX,mouseY);

}
void keyPressed(){
if(key=='b'){
m++;
}
if(key=='s'){
m--;
}
if(key=='d'){
   
t=true;
}
}