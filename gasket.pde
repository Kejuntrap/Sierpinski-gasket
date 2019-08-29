
int LIMIT=10;
int maxdepth=4;

float hen=600;

float sq3=(float)Math.sqrt(3);

void setup(){
  
  size(600,600);
  background(0);
}

void draw(){
  background(255);
  init(300 , 50 , hen);
  fractal(300 , 50 , hen/2.0 , 0);
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
  triangle(x , y , x - len/2.0 , y + sq3 * len/2.0 , x + len/2.0 , y + sq3 * len/2.0);
}
void fractal(float x,float y,float len,int depth){
  if(depth<=maxdepth){
    fill(255);
    noStroke();
    triangle(x - len/2.0 , y + sq3 * len /2.0 , x + len/2.0 , y + sq3 * len/2.0 , x , y + sq3 * len);
    fractal(x , y , len/2.0 , depth+1 );
    fractal(x - len/2.0 , y + sq3 * len /2.0 , len/2.0 , depth+1 );
    fractal(x + len/2.0 , y + sq3 * len /2.0 , len/2.0 , depth+1 );
  }
}
