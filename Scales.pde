void setup() {
  size(500, 500);  //feel free to change the size
  noLoop(); //stops the draw() function from repeating
}
void draw() {
  for (int y = 0; y < 1100; y = y + 50)
    for (int x = 0; x < 1100; x = x + 25)
        scale(x, y);

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

