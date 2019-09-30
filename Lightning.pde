int startX = 0;
int startY = 150;
int endX = 0;
int endY = 150;

void setup {
  size(800, 1100);
  strokeWeight(10);
  background(0);
}
void draw() {
	stroke(0, 0, 100);
	fill(0, 0, 100, 150);
	rect(0, 0, 800, 1100);
	stroke(255);
	fill(255);
	while(endX < 800) {
		endX = startX + Math.random(0, 9);
		endY = startY + Math.random(0, 9);
		line(startX, startY, endX, endY);
		startX = endX;
		startY = endY;
	}
}
void mousePressed() {
	startX = 0;
	startY = 150;
	endX = 0;
	endY = 150;
}

