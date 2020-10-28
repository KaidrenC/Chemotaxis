Bacteria[]bob= new Bacteria[5000];
 void setup()
 {
   size(600,600);
   for(int i=0; i<bob.length;i++){
     bob[i]= new Bacteria();}
   }
 
 void draw()
 {
   background (255,255,255);
  for(int i=0 ; i<bob.length; i++){
    bob[i].show();
    bob[i].walk();
  }

 }
 class Bacteria
 {
   int myX=(int)(Math.random()*500);
   int myY=(int)(Math.random()*500);
   double mySpeed;
   int mySize;
   int myColor;
   Bacteria(){
     myX = (int)(Math.random()*300)+200;
     myY = (int)(Math.random()*300)+200;
     mySpeed=mySize/2.0;
     mySize= (int)(Math.random()*20)+1;
     myColor = color((int)(Math.random()*100), (int)(Math.random()*100),(int)(Math.random()*100));
 }
 void show(){
   fill(myColor,myColor, myColor);
   noStroke();
   ellipse(myX,myY,mySize,mySize);
 }
 void walk(){
   if(mouseX > myX)
   myX = myX + (int)(Math.random()*30)-1;
   if (mouseX < myX)
   myX+=(int)(Math.random()*10)-8;
   if(mouseY > myY)
   myY = myY + (int)(Math.random()*30)-1;
   if (mouseY < myY)
   myY+=(int)(Math.random()*10)-10;
 }
 }
