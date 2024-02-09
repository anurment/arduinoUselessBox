#include <Servo.h>

//Pin numbers
const int switchPin = 5;
const int fingerServoPin = 10;
const int doorServoPin = 9;
const int led1Pin = 13;


//Minimum and maximum positions (angles) for the servos
const int fingerHide = 178;
const int lidClosed = 0;
const int fingerOut = 118;
const int lidOpen = 80;

//alternate positions

const int finger_almost_Out1 = 128;
const int finger_almost_Out2 = 122;
const int lid_half_Open = 60;

Servo fingerServo;
Servo doorServo;

int switchState = 0;


void setup() {
  
  pinMode(switchPin, INPUT);
  pinMode(led1Pin, OUTPUT);
  
  fingerServo.attach(fingerServoPin);
  doorServo.attach(doorServoPin);
  fingerServo.write(fingerHide);
  doorServo.write(lidClosed);
}

void loop() {
  
  //Check if the switch is turned on
  switchState = digitalRead(switchPin);  
  
  if (switchState == HIGH){
    
    //Choose a random mode
    int mode = rand() % 2;
    delay(500);
    
    switch(mode)
    {      
      case 0:
        basicRandomMode();
        break;
      case 1:
        unsureMode();
        break;
    }
  }
}





void basicRandomMode(){
  
  //These variables determine how fast the servos move
  int speed_finger = ((rand() % 2) + 1) * 3;
  int speed_door = ((rand() % 2) + 1) * 2;
  int delay_ = 15;
  
  //First the lid is opened
  for (int pos = lidClosed ; pos <= lidOpen; pos += speed_door){
    digitalWrite(led1Pin, HIGH);
    doorServo.write(pos);  
    delay(delay_);
    digitalWrite(led1Pin, LOW);
    Serial.println(pos);
  }
  delay(100);
  
  //Then the finger emerges to turn off the switch
  for (int pos = fingerHide; pos >= fingerOut; pos -= speed_finger){
    digitalWrite(led1Pin, HIGH);
    fingerServo.write(pos);   
    delay(delay_);
    digitalWrite(led1Pin, LOW);
    Serial.println(pos);
  }
  delay(100);
  //The finger goes back in
  for (int pos = fingerOut; pos <= fingerHide; pos += speed_finger){
    digitalWrite(led1Pin, HIGH);
    fingerServo.write(pos);
    delay(delay_);
    digitalWrite(led1Pin, LOW);
    Serial.println(pos);
  }
  delay(100);
  //The lid closes
  for (int pos = lidOpen; pos >= lidClosed; pos -= speed_door){
    digitalWrite(led1Pin, HIGH);
    doorServo.write(pos);  
    delay(delay_);
    digitalWrite(led1Pin, LOW);
    Serial.println(pos);
  }
  
}

void unsureMode(){
  
  //The lid opens and closes a couple of times
  for (int i = 0; i < 3; i++)
  {
    for (int pos = lidClosed; pos <= lid_half_Open; pos += 6)
    {
      doorServo.write(pos);
      delay(15);    
    }
    delay(500);
    for (int pos = lid_half_Open; pos >= lidClosed; pos -= 6)
    {
      doorServo.write(pos);
      delay(15);
    }
    delay(500);
  }
  
  //The lid opens fully
  for (int pos = lidClosed; pos <= lidOpen; pos += 8)
  {
    doorServo.write(pos);
    delay(15);
  }
  
  //The finger comes and goes back slowly
  for (int pos = fingerHide; pos >= finger_almost_Out1; pos -= 5)
  {
    fingerServo.write(pos);
    delay(15);
  }
  delay(3000);
  for (int pos = finger_almost_Out1; pos <= fingerHide; pos += 1)
  {
    fingerServo.write(pos);
    delay(50);
  }
  delay(100);
  //The finger comes even closer and goes back slowly  
  for (int pos = fingerHide; pos >= finger_almost_Out2; pos -= 8)
  {
    fingerServo.write(pos);
    delay(15);
  }
  delay(3000);
  for (int pos = finger_almost_Out2; pos <= fingerHide; pos += 1)
  {
    fingerServo.write(pos);
    delay(50);
  }
  
  delay(100);
  
  //The finger turns the switch off
  for (int pos = fingerHide; pos >= fingerOut; pos -= 5)
  {
    fingerServo.write(pos);
    delay(15);
  }
  delay(100);
  
  //The finger goes back in
  for (int pos = fingerOut; pos <= fingerHide; pos += 5)
  {
    fingerServo.write(pos);
    delay(15);
  }

  delay(500);
  
  //The lid closes
  for (int pos = lidOpen; pos >= lidClosed; pos -= 8)
  {
    doorServo.write(pos);
    delay(15);
  }
  
}
