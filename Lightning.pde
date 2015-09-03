int startX=0;
int startY=150;
int endX=0;
int endY=150;
int battery=1;

void setup()
{

  size(300,300);
  background(0,20,0);
  strokeWeight(10);
  textAlign(CENTER);
}
void draw()
{
stroke((int)(Math.random()*255),(int)(Math.random()+254),
(int)(Math.random()+254));
while(  endX<350)
{
endX=startX+2;
endY=startY+(int)(Math.random()*5)-2;
  startX=endX;
  startY=endY;
  line(startX,startY,endX, endY);
}
fill(255,255,255);
stroke(25);
strokeWeight(1);
rect(220,95,70,95);
ellipse(255,185,10,10);
fill(15);
rect(230,100,50,80);
fill(255,255,255);
text("Charging",257,140);
text(battery+"%",255,150);
strokeWeight(10);
}
void mousePressed()
{
startX=0;
startY=150;
endX=0;
endY=150;
battery=battery+1;

}

