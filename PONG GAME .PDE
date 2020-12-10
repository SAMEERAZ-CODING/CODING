float x, y, speedX, speedY;
float diam = 10;
float rectSize = 200;

void setup() {
  size(900,950);
  fill(#980042);
  reset();
}
void reset() {
  x = width/2;
  y = height/2;
  speedX = random(3,5);
  speedY = random(3,5);
}
void draw(){
  background(#EDD811);
  ellipse(x,y,diam,diam);
  rect(0,0,10,height);
  rect(width-30,mouseY-rectSize/2,40,rectSize);
  x += speedX;
  y += speedY;
  
  if( x > width-30 && x < width - 20 && y > mouseY-rectSize/2 && y < mouseY+rectSize/2){
    speedX = speedX *= -1;
  }
  if (x < 25){
    speedX += -1.1;
    speedY += 1.1;
    x += speedX;
  }
  if( y > height || y < 0){
    speedY *= -1;
  }
}
void mousePressed(){
  reset();
}
