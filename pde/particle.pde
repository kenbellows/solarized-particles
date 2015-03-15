final int particleRadius = 5;


class Particle {
  Particle(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.color = c;
  }
  void draw() {
    fill(this.color);
    ellipse(this.x, this.y, particleRadius);
  }
}