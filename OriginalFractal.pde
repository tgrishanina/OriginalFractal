public void setup(){
  size(500, 500);
}
public void draw(){
  for(int i = 0; i<=10; i++){
    background(i, i, i);
    noFill();
    stroke((int)(Math.random()*255),(int)(Math.random()*255),(int)(Math.random()*255));
  }
  myFractal(250, 250, 480, 255);
}
public void myFractal(int x, int y, int w, int h){
  ellipse(x, y, w, h);
   if(w > 20 && h>20)
  {
    myFractal(x-w/4, y, w/2, h/2);
    myFractal(x+w/4, y, w/2, h/2);
    myFractal(x, y+h/4, w/2, h/2);
    myFractal(x, y-h/4, w/2, h/2);
    myFractal(x+w/2, y+h/2, w/4, h/2);
    myFractal(x-w/2, y-h/2, w/4, h/2);
    myFractal(x-w/2, y+h/2, w/4, h/2);
    myFractal(x+w/2, y-h/2, w/4, h/2);
 }
}