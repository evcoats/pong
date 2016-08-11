int y = 0;
int x =(int) random(1280);
int xspeed = 4;
int yspeed = 4;
int rectY = 695;
int rectX = mouseX;
int rectLength = 150;
float time = 0;
AudioSample sound;
import ddf.minim.*; 
Minim minim;
void setup(){
  size(1280, 720);  
minim = new Minim (this);
 sound = minim.loadSample("drop.mp3", 128);
}
void draw(){
  background(204, 20, 204);  
  ellipse(x, y, 50, 50) ;
  fill(0, 0, 0)   ; 
  stroke(30, 60, 20) ;   
rect (rectX, rectY, 150, 25);
  x = x + xspeed;
  y= y + yspeed;
if ( x > 1255){
xspeed = (int) -(time);

}
if (x < 25){
xspeed = (int)time;

}
if ( y > 705){
yspeed =(int)-(time);
     
}
if (y > 705){
 sound.trigger();
time = 0;
y = 300;
}
if (y < 15){
yspeed = (int)time;
    
}



rectX = mouseX;

  if (intersects (x,y,rectX,rectY,rectLength)){
yspeed =(int) -(time);
  


}
time = time + .01;


}
  




boolean intersects (int X, int Y, int rectX, int rectY, int rectLength) {
if (Y > rectY && X > rectX && X < rectX + rectLength)
return true;
else 
return false;
}
