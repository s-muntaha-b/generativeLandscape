PImage sky;
PImage overlay;
PImage overlayTwo;
PImage star;
float x1, y1, x2, y2;
float speed1, speed2;

void setup() {
  size(1200, 800, P2D);
  sky = loadImage("night.jpg");
  sky.resize(sky.width * (height / sky.height), height);
  imageMode(CENTER);
  overlay = loadImage("cloud.png");
  overlay.resize(800, 400);
  imageMode(CENTER);
  overlayTwo = loadImage("cloud2.png");
  overlayTwo.resize(1000, 400);
  imageMode(CENTER);

  x1 = width/2;
  y1 = height/2;
  x2 = x1 + 25;
  y2 = y1 - 25;
  speed1 = 2;
  speed2 = speed1 * 0.5;
}

void draw() {
  background(0, 0, 0);
  tint(255, 255);
  image(sky, x2, y2);
  image(overlay, x2, y2); 
  image(overlayTwo, x2, y2);
 
  noTint();
  image(sky, x1, y1);
  image(overlay, x2, y2); 
  image(overlayTwo, x2, y2); 
  
  x1 += speed1;
  x2 += speed2;
    
  if (x1 > width || x1 < 0) {
    speed1 *= -1;  
    speed2 *= -1;
  }
}
