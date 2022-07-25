net n;

void setup(){

  size(500,500);
  
  n = new net();

}

void draw(){

  background(0);
  
  n.run();

}

class net{

  FloatList x,mx,y,my;
  float msp,k;

  net(){
  
    x = new FloatList();
    mx = new FloatList();
    y = new FloatList();
    my = new FloatList();
    
    msp = 5.0;
    k= 20.0;
  
  }
  
  void run(){
  
    engine();
    display();
  
  }
  
  void display(){
  
    for(int i = 0; i < x.size(); i++){
    
      fill(255);
      noStroke();
      ellipse(x.get(i),y.get(i),10,10);
    
    }//point
    
    for(int i = 0; i < x.size(); i++){
    
      for(int j = i + 1; j < x.size(); j++){
      
        float d = dist(x.get(i),y.get(i),x.get(j),y.get(j));
        
        if(d <= 100){
      
          stroke(255);
          line(x.get(i),y.get(i),x.get(j),y.get(j));
          
        }
      
      }
    
    }//line
    
    for(int i = 0; i < x.size(); i++){
    
      for(int j = i + 1; j < x.size(); j++){
      
        for(int n = j + 1; n < x.size(); n++){
        
          float d1 = dist(x.get(i),y.get(i),x.get(j),y.get(j));
          float d2 = dist(x.get(j),y.get(j),x.get(n),y.get(n));
          float d3 = dist(x.get(n),y.get(n),x.get(i),y.get(i));
          
          if(d1 <= 100 && d2 <= 100 && d3 <= 100){
          
            fill(255,128);
            noStroke();
            triangle(x.get(i),y.get(i),x.get(j),y.get(j),x.get(n),y.get(n));
          
          }
        
        }
      
      }
    
    }//triangle
  
  }//display
  
  void engine(){
  
    float r = random(100);
    
    if(r <= k){
    
      x.append(random(0,width));
      y.append(random(0,height));
      
      mx.append(random(-msp,msp));
      my.append(random(-msp,msp));
    
    }
    
    for(int i = 0; i < x.size(); i++){
    
      x.add(i,mx.get(i));
      y.add(i,my.get(i));
      
      if(x < 0 || x > width || y < 0 || y > height){
      
        x.remove(i);
        y.remove(i);
        
        mx.remove(i);
        my.remove(i);
      
      }
    
    }
  
  }

}
