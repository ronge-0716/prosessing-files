int[][] map = new int[][]{

  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 1,},
  {1, 5, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 5, 1,},
  {1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1, 1,},

};

int playerX = 1;
int playerY = 1;

void setup(){

  size(600,450);

}

void draw(){

  map[playerY][playerX] = 3;
  
  update();

}

void keyPressed(){

  if(keyCode == UP){
  
    if(map[playerY-1][playerX] == 1)return;
    playerY -= 1;
    map[playerY+1][playerX] = 2;
    
  }
  
  if(keyCode == DOWN){
  
    if(map[playerY+1][playerX] == 1)return;
    playerY += 1;
    map[playerY-1][playerX] = 2;
    
  }
  
  if(keyCode == RIGHT){
  
    if(map[playerY][playerX+1] == 1)return;
    playerX += 1;
    map[playerY][playerX-1] = 2;
    
  }
  
  if(keyCode == LEFT){
  
    if(map[playerY][playerX-1] == 1)return;
    playerX -= 1;
    map[playerY][playerX+1] = 2;
    
  }

}

void update(){

  for(int i = 0; i < 20; i++){
  
    for(int j = 0; j < 15; j++){
    
      if(map[j][i] == 0){
      
        fill(255);
        
      }
      
      if(map[j][i] == 1){
      
        fill(0);
      
      }
      
      if(map[j][i] == 2){
      
        fill(255,255,0);
      
      }
      
      if(map[j][i] == 3){
      
        fill(0,255,0);
      
      }
      
      if(map[j][i] == 4){
      
        fill(255,0,0);
      
      }
      
      if(map[j][i] == 5){
      
        fill(0,255,255);
      
      }
      
      //0:nuttetai
      //1:kabe
      //2:nuttearu
      //3:player
      //4:mob
      //5:item
      
      rect(30*i,30*j,30,30);
    
    }
  
  }

}
