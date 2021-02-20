public void setup(){
  size(400,400);
  ellipseMode(CENTER);
  background(0);
  
}
public void draw(){
  //some interesting settings for this:
  //200,200,300,10
  //200,200,100,3
  //200,200,100,10
  //200,200,160,4
  squares(200,200,300,10);
    
}
public void squares(int x, int y, int siz, int step){
  //noStroke();
  fill(50+(x/2),230-(x/2),0);
  ellipse(x,y,siz,siz);
  if(step>1)
    squares(x+(siz/step), y-(siz/step), step*10, step-1);
  if(step>1)
    squares(x-siz/(step), y+siz/(step), step*10, step-1);
  if(step>1)
    squares(x+siz/(step), y+siz/(step), step*10, step-1);
  if(step>1)
    squares(x-siz/(step), y-siz/(step), step*10, step-1);
}
