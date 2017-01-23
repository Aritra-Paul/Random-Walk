//by Aritra Paul
// Random Walk

void setup(){
  size(400,400);
  background(250);
  frameRate(100);
}


float x=200;  //starting x point
float y=200;  //starting y point
float number2Addx;  //second x point
float number2Addy;  //second y poiny

void draw(){
  float direction = random (4.0);  //Direction of the line (left,right,up,down), we have to have it inside Draw block because it has to choose a random direction everytime it runs the program instead of having the same direction from the start//
  if(direction >0.0 && direction <= 1.0){  
    number2Addx= x + 5; //If random probability is between 0.0 and 1.0 then it will add 5 to x//
    number2Addy = y;
  }
    else if(direction > 1.0 && direction <= 2.0){
      number2Addx= x - 5; //If random probability is between 1.0 and 2.0 then it will subtract 5 from x//
      number2Addy = y;
    }
      else if(direction > 2.0 && direction <= 3.0){
        number2Addx= x;
        number2Addy= y + 5; //If random probability is between 2.0 and 3.0 then it will add 5 to y//
      }
        else if(direction > 3.0 && direction <=4.0){
          number2Addx = x;
          number2Addy= y - 5;  //If random probability is between 3.0 and 4.0 then it will subtract 5 from y//
        }
      
   line(x, y, number2Addx, number2Addy);   //draws the line//
      
      
   if(direction > 0.0){  //We have to add this so 0.0 doesn't effect how the line moves because, if we add 0.0 then the probabilty of each direction will be different. One of them will be higher than other three//
          x = number2Addx;
          y = number2Addy;
      } else{
         number2Addx=x;
         number2Addy=y;
      }
        
}