void setup() {
  // put your setup code here, to run once:

}

void loop() {
  
if(Serial.available())
  {
  long int last = millis();
  
   String string = Serial.readString();

   int res = millis()-last;

   Serial.println(res);
  }

}
