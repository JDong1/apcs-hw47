ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(400, 400);

  for (int i = 0; i < 50; i++) {
    balls.add(new Ball(Math.random() * width, Math.random() * height, Math.random() * 5 + 3, Math.random() * 5 + 3));
  }
}

void draw() {
  for (Ball ball: balls) {
    ball.draw();
  }
}