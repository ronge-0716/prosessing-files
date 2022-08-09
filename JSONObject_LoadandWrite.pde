JSONObject load,write;
boolean nofile,typing;
String name;
StringList items = new StringList();
StringList names = new StringList();

void setup(){
  
  typing = false;
  
  println("Starts loading saved file.");
  println();

  try{
  
    println("Loading file ...");
    
    load = loadJSONObject("save.json");
    nofile = false;
    
    println("Saved file successfully loaded.");
    println();
    
    name = load.getJSONObject("User").getString("Name");
    
    for(int i = 0; i < load.getJSONArray(name).size(); i ++){
    
      items.append(load.getJSONArray(name).getString(i));
    
    }
    
    println("your name: " + name);
  
  }catch(NullPointerException e){
  
    
  
  }

}

void draw(){



}

void keyPressed(){

  if(key == 'n' && !typing){
  
    println("Create new data.");
    println();
    println("Enter your name Press the ENTER key when you are finished.");
    println();
    typing = true;
    name = new String();
  
  }
  
  if(key == 'e' && nofile && !typing)exit();
  
  if(typing){
  
    if(keyCode == ENTER){CreateNewdata(); typing = false;}
    if(keyCode != SHIFT && keyCode != TAB)names.append(str(key));
  
  }

}

void CreateNewdata(){

  println("Creating data...");
  
  for(int i = 0; i < names.size(); i++){
  
    if(i > 0)name += names.get(i);
  
  }
  
  JSONObject Bace,ject;
  Bace = new JSONObject();
  ject = new JSONObject();
  
  ject.setString("Name",name);
  
  Bace.setJSONObject("User",ject);
  
  JSONArray jarray = new JSONArray();
  
  jarray.append("Welcome to Processing!")
        .append("You noooooooob LOL");
  
  Bace.setJSONArray(name,jarray);
  
  saveJSONObject(Bace,"save.json");
  
  nofile = true;
  
  println("Successfully created data.");
  println();
  println("The created file is being read.");
  
  load = loadJSONObject("save.json");
  
  println("Saved file successfully loaded.");
  println();
  
  name = load.getJSONObject("User").getString("Name");
    
    for(int i = 0; i < load.getJSONArray(name).size(); i ++){
    
      items.append(load.getJSONArray(name).getString(i));
    
    }
    
    println("your name: " + name);
    println("your items:[");
    
    for(int i = 0; i < items.size(); i++){
    
      println("\"" + items.get(i) + "\"");
    
    }
    println("]");

}
