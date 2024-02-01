//Task 5

//Task 5.a
int circleSize;
//Task 5.b
int numberOfCircles;
//5.c
int x;
int y;
//5.d
int counter = 0;
int rowCounter = 0;
//Task 6
//6.a
int red;
int green;
int blue;
int currentRow;

void setup(){
   size(400,400);
   numberOfCircles = 30;
   circleSize = width/numberOfCircles;
   ellipseMode(CORNER);
  red= 255;
  green=255;
  blue=255;
  currentRow = 0;
}
void draw(){
  
 numberOfCircles = 30;
 
  x = circleSize*counter;
  y = circleSize*rowCounter;
 
 // Un-comment this line after completing step 6.a 
 fill(red,green,blue);
   
   ellipse(x,y,circleSize,circleSize);
  
  // Explaining conditional assignments. 
  // First part before the ?-mark, is a conditional. 
  // If this is true, the value after the ?-mark will be assigned. 
  // If not, the last value will.
  counter =  frameCount % numberOfCircles == 0 ? 0 : counter+1;
  rowCounter =  counter==0 ? rowCounter+1:rowCounter;
  //Task 6.c
  //det er en boolean expression hvor man spørger om current er ligmed counter
  if(currentRow == counter){
    //her assigner man de forskellige de nye variabler en ny værdi ved at de trukkes fra
  red = red-100;
  green = green- 55;
  //det samme gør man her dvs man assigner currentRow en ny værdi som er counter
  currentRow = counter;
  }
  // hvis rød er ligmed eller større end 0 så resetter deb til originale value som er 255 og det samme gælder for green
  if(red <= 0){
   red = 255;
   green = 255;
  }
  println( "CurrentRow:"+currentRow+ "counter: "+ counter);
  


  
  // Explaining the modulus operator
  // Modulus is what is left when you divide one int with another int.
  // 1 % 3 = 1 (3 people can't share 1 apple without cutting it, so 1 apple is left)
  // 2 % 3 = 2
  // 3 % 3 = 0
 
  //Add the code for 6.c here
  
}
