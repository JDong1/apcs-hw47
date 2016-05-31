ArrayList<Ball> balls = new ArrayList<Ball>();

void setup() {
  size(400, 400);

  for (int i = 0; i < 20; i++) {
    balls.add(new Ball(Math.random() * width, Math.random() * height, Math.random() * 5 + 0.1, Math.random() * 5 + 0.1));
  }
}

void draw() {
  clear();
  for (Ball ball: balls) {
    ball.draw();
    ball.tick();
  }
}