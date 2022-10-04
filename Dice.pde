void setup()
{
  size(500,500);
  noLoop();
    
}
int dot;
int total = 0;
Die first;
void draw()
{
    //your code here
    background(0);
    for(int y = 0; y <= 400; y = y+50){
      for (int x = 0; x <= 450; x = x+50){
        first = new Die(x,y);
        first.show();
        if (dot == 1){
          total = total +1;
        }
        if (dot == 2){
          total = total +2;
        }
        if (dot == 3){
          total = total +3;
        }
        if (dot == 4){
          total = total +4;
        }
        if (dot == 5){
          total = total +5;
        }
        if (dot == 6){
          total = total +6;
        }
      }
    }
    fill(255);
    text("Total:  "+total ,225,450,100,100);
    
}
void mousePressed()
{
    redraw();
    total = 0;
}
class Die //models one single dice cube
{
    //member variable declarations here
    int myX, myY;
    Die(int x, int y) //constructor
    {
        //variable initializations here
        myX = x;
        myY = y;
    }
    void roll()
    {
        //your code here
    }
    void show()
    {
        //your code here
        dot = (int) (Math.random()*6)+1;
        fill(255);
        rect(myX, myY, 50,50);
        if (dot == 1){
          fill(0);
          ellipse(myX+25,myY+25,10,10);
        }
        if (dot == 2){
          fill(0);
          ellipse(myX+18,myY+25,10,10);
          ellipse(myX+32,myY+25,10,10);
        }
        if (dot == 3){
          fill(0);
          ellipse(myX+15,myY+13,10,10);
          ellipse(myX+25,myY+23,10,10);
          ellipse(myX+35,myY+33,10,10);
        }
        if (dot == 4){
          fill(0);
          ellipse(myX+18,myY+18,10,10);
          ellipse(myX+18,myY+32,10,10);
          ellipse(myX+32,myY+18,10,10);
          ellipse(myX+32,myY+32,10,10);
        }
        if (dot == 5){
          fill(0);
          ellipse(myX+15,myY+15,10,10);
          ellipse(myX+15,myY+35,10,10);
          ellipse(myX+35,myY+15,10,10);
          ellipse(myX+35,myY+35,10,10);
          ellipse(myX+25,myY+25,10,10);
        }
        if (dot == 6){
          fill(0);
          ellipse(myX+18,myY+15,10,10);
          ellipse(myX+32,myY+15,10,10);
          ellipse(myX+18,myY+25,10,10);
          ellipse(myX+32,myY+25,10,10);
          ellipse(myX+18,myY+35,10,10);
          ellipse(myX+32,myY+35,10,10);
        }
    }
}
