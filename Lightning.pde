int startX = 0;
int startY = (int)(Math.random() * 500);
int endX = 0;
int endY = (int)(Math.random() * 500);

void setup() {
  size(500, 500);
  strokeWeight(1);
  background(0);
}

void draw() {
	stroke((int)(Math.random() * 255), (int)(Math.random() * 255) + 100, 255);
	fill((int)(Math.random() * 255), (int)(Math.random() * 255) + 100, 255);
	while(endX < 500) {
		endX = startX + (int)(Math.random() * 5);
		endY = startY + (int)((Math.random() * 18) - 9);
		point(startX, startY);
		startX = endX;
		startY = endY;
	}
}

void mousePressed() {
	startX = 0;
	startY = (int)(Math.random() * 500);
	endX = 0;
	endY = (int)(Math.random() * 500);
}

