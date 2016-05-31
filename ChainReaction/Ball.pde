public class Ball {
  private double px;
  private double py;
  private double vx;
  private double vy;
  private Color clr;

  public Ball(double px, double py, double vx, double vy) {
    this.vx = vx;
    this.vy = vy;
    this.px = px;
    this.py = py;
    clr = color(random(0,255),random(0,255),random(0,255));
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
    fill(clr);
    stroke(clr);
    ellipse((float) px, (float) py, 10.0, 10.0);
  }
}