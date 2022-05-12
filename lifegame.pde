int num,cells[][],swap[][];
float cell_w;

void setup(){

  size(500,500);
  
  num = 50;
  cells = new int[num][num];
  cell_w = width/num;
  
  cell_set();

}

void draw(){

  cell_engine();
  cell_draw();

}

void cell_set(){

  for(int i = 0; i < num; i++){
  
    for(int j = 0; j < num; j++){
    
      cells[i][j] = (int)random(2);
    
    }
  
  }

}

void cell_draw(){

  for(int i = 0; i < num; i++){
  
   for(int j = 0; j < num; j++){
   
     if(cells[i][j] == 1)fill(0,255,0);
     else fill(0);
     
     rect(i*cell_w,j*cell_w,cell_w,cell_w);
     
   }
  
  }

}

void cell_engine(){

  int c,n,e,s,w,ne,se,sw,nw,nimI,minJ,nei;
  swap = new int[num][num];
  
  for(int i = 0; i < num; i++){
  
    for(int j = 0; j < num; j++){
    
      if(i == 0)minI = num - 1;
      else nimI = i - 1;
      if(j == 0)minJ = num - 1;
      else nimJ = j - 1;
      
      ne = cells[minI][minJ];//左上？
      n = cells[i][minJ];//上
      nw = cells[(i + 1)%num][minJ];//右上？
      
      e = cells[minI][j];//左
      c = cells[i][j];//真ん中
      w = cells[(i + 1)%num][j];//右
      
      se = cells[minI][(j + 1)%num]//左下;
      s = cells[i][(j + 1)%num];//下
      sw = cells[(i + 1)%num][(j + 1)%num];//右下
      
      c + n + w + e + s + ne + nw + se + sw = nei;
      
      if(nei == 3)swap[i][j] = 1;
      else if(nei == 2)swap[i][j] = c;
           else swap[i][j] = 0;
    
    }
    
  }

}
