Die Joe;
int sum =0;
void setup()
  {
      size(500,500);
      textSize(20);
      noLoop();
  }
  void draw()
  {
    background((int)(Math.random()*256+100),(int)(Math.random()*256+100),(int)(Math.random()*256)+100);
      for (int x = 20 ;x <500;x+= 60){
         for (int y = 20;y<400;y+=60){
                 Joe= new Die (x,y);
                 Joe.roll();
                 Joe.show();
         }
      }
      text("Total: " + sum, 200,450);
    
  }
  void mousePressed()
  {
      rect(0,0,500,500,10);
      background(0);
      
      redraw();
      sum = 0;
      
      text("Total: " + sum, 200,450);
  }
  class Die //models one single dice cube
  {
      //member variable declarations here
      int myX,myY,randomNum;
     
     
      Die(int x, int y) //constructor
      {
          //variable initializations here
          randomNum = ((int)(Math.random()*6)+1);
          myX = x;
          myY = y;
      }
      void roll()
      {
        randomNum = ((int)(Math.random()*6)+1);
         
      }
      void show()
      {
           fill(255);
           if (randomNum == 1){
             rect(myX,myY, 50,50);
             fill(0);
             ellipse(myX + 25,myY+25,8,8);
             sum = sum +1;
           }else if (randomNum == 2){
             rect(myX,myY,50,50);
             fill(0);
             ellipse(myX + 35,myY+35,8,8);
             ellipse(myX +15 ,myY+15,8,8);
             sum = sum + 2;
           }else if (randomNum == 3){
             rect(myX,myY,50,50);
             fill(0);
             ellipse(myX+35,myY+35,8,8);
             ellipse(myX+15,myY+15,8,8);
             ellipse (myX+25,myY+25,8,8);
             sum = sum + 3;
           }else if(randomNum ==4){
             rect(myX,myY,50,50);
             fill(0);
             ellipse(myX + 35,myY+15,8,8);
             ellipse(myX +15,myY+15,8,8);
             ellipse(myX+35, myY +35,8,8);
             ellipse(myX +15,myY+35,8,8);
             sum = sum +4;
           }else if(randomNum == 5){
             rect(myX,myY,50,50);
             fill(0);
             ellipse(myX + 35,myY+15,8,8);
             ellipse(myX +35,myY+35,8,8);
             ellipse(myX+15, myY +15,8,8);
             ellipse(myX +15,myY+35,8,8);
             ellipse(myX+25,myY+25,8,8);
             sum = sum +5;
           } else{
             rect(myX,myY,50,50);
             fill(0);
             ellipse(myX +35,myY+37,8,8);
             ellipse(myX +35,myY+25,8,8);
             ellipse(myX+35, myY+12,8,8);
             ellipse(myX +15,myY+12,8,8);
             ellipse(myX + 15,myY +25,8,8);
             ellipse(myX +15,myY +37,8,8);
             sum = sum + 6;
           }
      }
  }
