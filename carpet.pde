
int LIMIT=6;
int maxdepth=3;

float hen=600;

void setup(){
  
  size(620,620);
  background(0);
}

void draw(){
  background(255);
  init(10 , 10 , hen);
  fractal(10 , 10 , hen , 0);
}

void keyPressed(){
  if(keyCode==UP){
    if(maxdepth+1<=LIMIT){
      maxdepth++;
      draw();
    }
  }
  else if(keyCode==DOWN){
    if(maxdepth-1>=0){
      maxdepth--;
      draw();
    }
  }
  println(maxdepth);
}

void init(float x,float y,float len){
  fill(0);
  noStroke();
  rect(x , y ,len, len);
}
void fractal(float x,float y,float len,int depth){
  if(depth<=maxdepth){
    fill(255);
    noStroke();
    rect( x+len/3 , y + len/3 , len/3 ,len/3);
    
    for(int i=0; i<3; i++){
      for(int j=0; j<3; j++){
        fractal( x+ len/3 * i , y + len/3 * j , len/3 , depth+1);
        if(i==1 && j!=1){
          continue;
        }
      }
    }
  }
}
