public int lim = 30;
public void setup(){
  size(800,800);
}

public void draw(){
  fill(0,255,0);
  background(0);
  sierpinski(100,650,600);
}

public void sierpinski(int x, int y, int length){
  if(length<lim){
    triangle(x,y,x+length,y,x+length/2,y-length);
  } else {
    sierpinski(x,y,length/2);
    sierpinski(x+length/2,y,length/2);
    sierpinski(x+length/4,y-length/2,length/2);
  }
}
public void keyPressed(){
  if(key == ' ' && lim<=90){
    lim+=30;
  }
  if(key == '1' && lim>30){lim-=30;}
}
