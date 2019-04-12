 boolean intersects(){
  if(y<pipeHeight+gap&&60>x&&60<(x+30)){
    return true;
}else if(y>pipeHeight&&60>x&&60<(x+30)){
return true;
}else if(y<1||y>400){
  return true;
}else{
 return false; 
}
}  
    
    int x=400;
    int grav=1;
    int y=100;
      int pipeHeight=200;
      int gap=100;
      int nextX=600;
      int pipe2Height=(int) random(70,320);
void setup(){
  size(400,400);
}
void draw(){
  if(intersects()==true){
    System.exit(0);
  }
  if(x<-30){
   pipeHeight=(int) random(70,320);
   x=400;
  }
  if(nextX<-30){
   pipe2Height=(int) random(70,320);
   nextX=400;
  }
background(0, 0, 255);
fill(255, 0, 0);
stroke(255, 0, 0);
ellipse(60, y, 15, 15);
fill(0, 255, 0);
rect(x, 0, 30, pipeHeight);
rect(x, pipeHeight+gap, 30, 400);
   rect(nextX, 0, 30, pipe2Height);
rect(nextX, pipe2Height+gap, 30, 400);
x=x-2;
nextX=nextX-2;
y=y+grav;
grav++;
if(grav>7){
  grav=7;
}
}
void mousePressed(){
 grav=-10;
}