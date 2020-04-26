char Incoming_value = 0;

void setup() {
  
  // put your setup code here, to run once:
  pinMode(12, OUTPUT);   //set pin as output , blue led
  pinMode(10, OUTPUT);   //set pin as output , red led
  pinMode(8, OUTPUT);   //set pin as output , yellow led

  Serial.begin(9600);    //start serial communication @9600 bps
}

void loop() {
  
  if(Serial.available() > 0)  
  {
    Incoming_value = Serial.read();      //Read the incoming data and store it into variable Incoming_value
    Serial.println(Incoming_value);        //Print Value of Incoming_value in Serial monitor
    
     if(Incoming_value == 'r'){       //if r received
      digitalWrite(10, HIGH); //turn on red led
      }
    if(Incoming_value == 'b'){       //if b received
      digitalWrite(8, HIGH); //turn on blue led
      }
    if(Incoming_value == 'y'){       //if y received
      digitalWrite(8, HIGH); //turn on yellow led
      }
    if(Incoming_value == 'f'){       //if f received
      digitalWrite(8, LOW); //turn off all led
      digitalWrite(10, LOW);
      digitalWrite(12, LOW);
      }
  }                        
}
