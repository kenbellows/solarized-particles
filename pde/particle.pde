final int particleRadius = 5;

class Particle {
  Particle(int x, int y, color c) {
    this.x = x;
    this.y = y;
    this.color = c;
  }
  void draw() {
    fill(red(this.color), green(this.color), blue(this.color));
    noStroke();
    ellipse(this.x, this.y, particleRadius, particleRadius);
  }
  void pickNewColor(color[] colorBank) {
    this.color = color(colorBank[int(random(colorBank.length))]);
  }
}
