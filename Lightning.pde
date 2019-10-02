int startX = 0;
int startY = (int)(Math.random() * 500);
int endX = 0;
int endY = (int)(Math.random() * 500);
int clicks = 0;

void setup() {
  size(600, 600);
  strokeWeight(3);
  background(0);
  frameRate(120);
}

void draw() {
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255) + 100, 255);
	fill((int)(Math.random() * 255), (int)(Math.random() * 255) + 100, 255);
	endX = startX + (int)(Math.random() * 7);
	endY = startY + (int)((Math.random() * 18) - 9);
	point(startX, startY);
	startX = endX;
	startY = endY;
	stroke(255, 252, 196);
	fill(255, 252, 196);
	ellipse(550, 50, 60, 60);
	fill(0);
	text("moon", 535, 55);
	if(clicks > 20) {
		fill(0);
		stroke(0);
		rect(0, 0, 600, 600);
		clicks = 0;
	}
}

void mousePressed() {
	startX = 0;
	startY = (int)(Math.random() * 500);
	endX = 0;
	endY = (int)(Math.random() * 500);
	stroke(255, 252, 196);
	fill(255, 252, 196);
	ellipse(550, 50, 60, 60);
	fill(0);
	text("moon", 535, 55);
	clicks = clicks + 1;
}

