void setup() {
  size(1000, 1000);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  
  int y = 0;//line 7
  while(y < 1100){//line 8
    int x = 0;//line 6
    while(x < 1100){  //line 9
        scale(x, y); //line 10
        x = x + 25;//line 10.5
    } //end of the x while loop
    y = y + 50; //line 12
  } //end of y while loop
}
void scale(int x, int y) {
  //your code here
  //main ellipse
  fill(130, 22, 214);
  ellipse(x, y, 40, 80); 
  //main diamond
  fill((int)(Math.random() * 256), (int)(Math.random() * 256), (int)(Math.random() * 256));//randomized fill colors
  quad(x-10, y, x, y-20, x+10, y, x, y+20);
  //middle curve
  noFill();
  strokeWeight(2);
  stroke((int)(Math.random() * 256) + 180, (int)(Math.random() * 256) + 180, 255);//stroke color
  //bezier(x-19, y, x-14, y-10, x+14, y-10, x+19, y);//curve
  line(x-20, y, x+20, y);//horizontal line
  line(x, y-40, x, y+40);//vertical line
  line(x-15, y+30, x+15, y-30);//left to right upwards diagonal line
  line(x-15, y-30, x+15, y+30);//left to right downwards diagonal
  
  
  

  
}
