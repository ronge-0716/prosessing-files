class Ellipse{
  
  float x = 600;
  float y = 300;
  float px,py;

  void run(){
  
    engine();
    display();
  
  }
  
  void display(){
  
    translate(x,y);
    
    noFill();
    strokeWeight(5);
    stroke(0,255,0);
    ellipse(0,0,200,200);
    
    fill(255,0,0);
    stroke(255,0,0);
    ellipse(px,py,10,10);
    
    translate(-x,-y);
  
  }
  
  void engine(){
  
    px = 100*sin(count/10);
    py = 100*cos(count/10);
  
  }

}
