public class Ball {
  double vx;
  double vy;
  double px;
  double py;
  
public Ball(double vx, double vy, double px, double py) {
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
    inertia();
     bounce();
  }
  
  public void bounce() {
      if (px<=0 || px>=width) { vx *= -1; }
      if (py<=0 || px>=height) { vy *= -1; }
    }
}