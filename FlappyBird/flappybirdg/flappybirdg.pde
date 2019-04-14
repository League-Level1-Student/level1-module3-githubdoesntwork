 boolean intersects(){
  if (birdY < upperPipeHeight && birdX > pipeX && birdX < (pipeX+30)){
          return true; }
     else if (birdY>lowerPipeHeight && birdX > pipeX && birdX < (pipeX+30)) {
          return true; }
     else if(birdY<0||birdY>400){
       return true;
     }else if (birdY < upperPipe2Height && birdX > pipe2X && birdX < (pipe2X+30)){
          return true;
        }
     else if (birdY>lowerPipe2Height && birdX > pipe2X && birdX < (pipe2X+30)) {
          return true; 
        }else{
       return false; 
   }
}

    int birdX=60;
    int pipeX=400;
    int grav=1;
    int birdY=100;
      int upperPipeHeight=200;
      int gap=100;
      int nextX=600;
      int lowerPipeHeight=upperPipeHeight+gap;
      int upperPipe2Height=(int) random(70, 320);
      int lowerPipe2Height=upperPipe2Height+gap;
      int pipe2X=600;
void setup(){
  size(400,400);
}
void draw(){
  if(intersects()==true){
    System.exit(0);
  }
  if(pipeX<-30){
   upperPipeHeight=(int) random(70,320);
   pipeX=400;
  }
   if(pipe2X<-30){
   upperPipe2Height=(int) random(70,320);
   pipe2X=400;
  }

background(0, 0, 255);
fill(255, 0, 0);
stroke(255, 0, 0);
ellipse(birdX, birdY, 15, 15);
fill(0, 255, 0);
rect(pipeX, 0, 30, upperPipeHeight);
rect(pipeX, upperPipeHeight+gap, 30, lowerPipeHeight);
rect(pipe2X, 0, 30, upperPipe2Height);
rect(pipe2X, upperPipe2Height+gap, 30, lowerPipe2Height);
pipeX=pipeX-2;
pipe2X=pipe2X-2;
birdY=birdY+grav;
grav++;
if(grav>7){
  grav=7;
}
}
void mousePressed(){
 grav=-7;
} 