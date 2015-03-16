final int numParticles = 500;

Particle[] particles;
color[] particleColors;

void setup() {
  size(500, 500);
  background(32);

  particleColors = {
    color( 181, 137, 0   ), // yellow
    color( 220, 50,  47  ), // orange
    color( 211, 54,  130 ), // red
    color( 108, 113, 196 ), // magenta
    color( 108, 113, 196 ), // violet
    color( 38,  139, 210 ), // blue
    color( 42,  161, 152 ), // cyan
    color( 133, 153, 0   )  // green
  };
  window.particleColors = particleColors;

  particles = new Particle[numParticles];
  for (int i=0; i<numParticles; i++) {
    particles[i] = new Particle(
        int(random(width)),
        int(random(height)),
        particleColors[int(random(particleColors.length))]
    );
  }
  window.particles = particles;
}

void draw() {
  for (Particle p : particles) {
    p.draw();
  }
}

