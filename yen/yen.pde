Ellipse e;
Lines l;
Wave w;

float count;
boolean t;

void setup(){

  size(700,400);
  
  e = new Ellipse();
  l = new Lines();
  w = new Wave();

}

void draw(){
  
  clear();
  
  t = true;
  if(t)count++;

  e.run();
  l.run();
  w.run();

}

void keyPressed(){

  if(key == 't')t  = true;

}

void keyReleased(){

  if(key == 't')t  = false;

}
