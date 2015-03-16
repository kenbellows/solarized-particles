final int particleRadius = 5;

class Particle {
  Particle(int x, int y, PVector v, color c) {
    this.x = x;
    this.y = y;
    this.color = c;
    this.velocity = v;
  }
  void draw() {
    fill(red(this.color), green(this.color), blue(this.color));
    noStroke();
    ellipse(this.x, this.y, particleRadius, particleRadius);
  }
  void update() {
    this.x += this.velocity.x;
    this.y += this.velocity.y;
    if (this.x < 0 || this.x > width)  this.velocity.x *= -1;
    if (this.y < 0 || this.y > height) this.velocity.y *= -1;
  }
  void pickNewColor(color[] colorBank) {
    this.color = color(colorBank[int(random(colorBank.length))]);
  }
}

final int cutoffRadius = 15;
class DissipativeParticle extends Particle {
  DissipativeParticle(int x, int y, color c) {
    super (x, y, new PVector(0,0), c);
  }
  void update() {
    PVector force = new PVector(0, 0);
    // gravity
    force.add(new PVector(9.8, 0));
  }
}
