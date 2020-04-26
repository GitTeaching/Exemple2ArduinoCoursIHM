
import controlP5.*;
import processing.serial.*;

Serial port;

ControlP5 cp5;
PFont font;

void setup(){ 

  size(300, 450);    //window size, (width, height)
  
  printArray(Serial.list());   
  
  port = new Serial(this, "COM6", 9600);  
  
  //Add buton to empty window
  
  cp5 = new ControlP5(this);
  font = createFont("calibri light bold", 20);  
  
  cp5.addButton("red")    
    .setPosition(100, 50)  
    .setSize(120, 70)      
    .setFont(font)
  ;   

  cp5.addButton("yellow")    
    .setPosition(100, 150)  
    .setSize(120, 70)      
    .setFont(font)
  ;

  cp5.addButton("blue")     
    .setPosition(100, 250)  
    .setSize(120, 70)      
    .setFont(font)
  ;
  
  cp5.addButton("alloff")     
    .setPosition(100, 350)  
    .setSize(120, 70)      
    .setFont(font)
  ;
}

void draw(){  

  background(150, 0 , 150); // background color of window (r, g, b) or (0 to 255)
 
  fill(0, 255, 0);               
  textFont(font);
  text("LED CONTROL", 80, 30);  
}

void red(){
  port.write('r');
}

void yellow(){
  port.write('y');
}

void blue(){
  port.write('b');
}

void alloff(){
  port.write('f');
}

//https://www.hackster.io/hardikrathod/control-arduino-using-gui-arduino-processing-2c9c6c
