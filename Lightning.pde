int x;
int y;
int red;
int green;
int blue;
ArrayList <Integer> xCoord = new ArrayList <Integer>();
ArrayList <Integer> yCoord = new ArrayList <Integer>();
int i;

void setup() {
  xCoord.add(0);
  xCoord.add(0);
  yCoord.add(0);
  yCoord.add(0);
  size(500, 500);
  background(0);
  frameRate(20);
}
void draw(){
  fill(0,0,0,30);
  rect(0,0,500,500);
  strokeWeight(6);
  stroke(red,green,blue);
  line(xCoord.get(i), yCoord.get(i), xCoord.get(i+1), yCoord.get(i+1));
  if(i == xCoord.size()-2){
    xCoord = new ArrayList <Integer>();
    yCoord = new ArrayList <Integer>();
    xCoord.add(0);
    xCoord.add(0);
    yCoord.add(0);
    yCoord.add(0);
    i = 0;
  }
  else 
    i++;
  strokeWeight(2);
  stroke(255);
  beginShape();
  for(int i = 0; i <= xCoord.size()-1; i++){
    vertex(xCoord.get(i),yCoord.get(i));
  }
  endShape();
}


void mousePressed() {
  x = (int)(Math.random()*500);
  y = 0;
  //random color
  red = (int)(Math.random()*255);
  green = (int)(Math.random()*255);
  blue = (int)(Math.random()*255);
  //create array
  xCoord = new ArrayList <Integer>();
  yCoord = new ArrayList <Integer>();
  //repeat till end of screen
  while(y < 700){
    xCoord.add(x);
    yCoord.add(y);
    //sets new y by adding random #
    y = y + ((int)(Math.random()*100));
    //sets new x by adding or subtracting random # 50/50 chance
    if(Math.random()<0.5){
      x = x + ((int)(Math.random()*100));
      while(x > 490)
        x -= 5;
    }
    else{
      x = x - ((int)(Math.random()*100));
    while(x < 10)
      x += 10;
    }
  }
  i = 0;
}
