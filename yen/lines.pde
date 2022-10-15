class Lines{

  void run(){

    display();
  
  }
  
  void display(){
  
    stroke(0,0,255);
    line(0,200,700,200);
    line(500,0,500,400);
    
    translate(e.x,e.y);
    
    stroke(255,0,255);
    line(e.px,e.py,-100,e.py);
    
    stroke(255,255,0);
    line(e.px,e.py,e.px,-100 - (e.px + 100));
    line(e.px,-100 - (e.px + 100),-100,-100 - (e.px + 100));
    
    translate(-e.x,-e.y);
  
  }

}
