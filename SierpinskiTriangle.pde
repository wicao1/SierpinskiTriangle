public void setup() {
  background(0);
  size(400, 400);
}

public void draw() {
  fill(255);
  text("Christmas came early!", 250, 30);
  text("Click to see colorful tree", 250, 50);
}

public void mousePressed() {
  background((int)(Math.random()*200),(int)(Math.random()*200),(int)(Math.random()*200));
  sierpinski(20, 350, 300);
  fill(165,42,42);
  rect(165, 350, 10, 30);
}

public void sierpinski(int x, int y, int len) {
  if (len <= 20) {
    fill((int)(Math.random()*255),
    (int)(Math.random()*255),(int)(Math.random()*255));
    triangle(x, y, x+(len/2), y-len, x+len, y);
  } else {
    sierpinski(x, y, (len/2));
    sierpinski(x+(len/2), y, (len/2));
    sierpinski(x+(len/4), y-(len/2), (len/2));
  }
}
