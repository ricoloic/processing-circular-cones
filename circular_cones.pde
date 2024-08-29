int amountOfCirclePoints = 500;

int circleRadius = 100;
int outterCircleRadius = 350;

void setup() {
  size(900, 900);
}

float offset = 0;

void draw() {
  colorMode(RGB);
  background(33);
  colorMode(HSB);
  translate(width / 2, height / 2);
  
  strokeWeight(5);
  
  for (float a = offset; a < TWO_PI - 0.0001 + offset; a += TWO_PI / 3) {
    float x = cos(a) * outterCircleRadius;
    float y = sin(a) * outterCircleRadius;
    point(x, y);
    
    for (float a2 = 0; a2 < TWO_PI - 0.0001; a2 += TWO_PI / amountOfCirclePoints) {
      float x2 = cos(a2) * circleRadius;
      float y2 = sin(a2) * circleRadius;
      stroke(color(map(a2, 0, TWO_PI, 0, 360), 220, 255), 30);
      line(x, y, x2, y2);
    }
  }
   offset += 0.01;
}
