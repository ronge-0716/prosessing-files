class Wave{
  
  float x,y;
  
  FloatList swx = new FloatList();
  FloatList swy = new FloatList();
  
  FloatList cwx = new FloatList();
  FloatList cwy = new FloatList();

  void run(){
  
    engine();
    display();
  
  }
  
  void display(){
    
    translate(e.x,e.y);
    
    for(int i = 0; i < swx.size(); i++){
    
      fill(255,0,255);
      stroke(255,0,255);
      ellipse(x,y,5,5);
      
      ellipse(swx.get(i),swy.get(i),5,5);
      
      fill(255,255,0);
      stroke(255,255,0);
      ellipse(x,y,5,5);
      
      ellipse(cwx.get(i),cwy.get(i),5,5);
    
    }
    
    fill(255,0,255);
      stroke(255,0,255);
      ellipse(x,y,5,5);
      
      translate(-e.x,-e.y);
  
  }
  
  void engine(){
    
    for(int i = 0; i < swx.size(); i++){
    
      swx.set(i,swx.get(i) - 5);
      cwx.set(i,cwx.get(i) - 5);
      
      if(swx.get(i) < -605){
      
        swx.remove(i);
        swy.remove(i);
        cwx.remove(i);
        cwy.remove(i);
      
      }
    
    }
  
    x = -100;
    y = e.py;
    
    if(t){
    
      swx.append(x);
      swy.append(y);
    
      cwx.append(x);
      cwy.append(-100 - (e.px + 100));
    
    }
  
  }

}
