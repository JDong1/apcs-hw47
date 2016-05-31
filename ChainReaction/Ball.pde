public class Ball {
  double vx;
  double vy;
  double px;
  double py;

  public Ball(double px, double py, double vx, double vy) {
    this.vx = vx;
    this.vy = vy;
    this.px = px;
    this.py = py;
  }
  
  public void inertia() {
    px += vx;
    py += vy;
  }
  
  public void tick() {
    bounce();
    inertia();
  }
  
  public void bounce() {
    if (px<=0 || px>=width) { vx *= -1; }
    if (py<=0 || py>=height) { vy *= -1; }
  }

  public void draw() {
    ellipse((float) px, (float) py, 10.0, 10.0);
  }
}