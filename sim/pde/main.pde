final int numParticles = 500;
final int stageSize = 750;

Particle[] particles;
color[] particleColors;
color[] backgroundColors;
color currentBackground;

void setup() {
  size(stageSize*1.5, stageSize);

  // snatched from the Solarized color scheme by Ethan Schoover
  // http://ethanschoonover.com/solarized
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
  backgroundColors = {
    color( 0,   43,  54  ),
    color( 253, 246, 227 )
  };
  currentBackground = backgroundColors[int(random(backgroundColors.length))];
  
  particles = new Particle[numParticles];
  for (int i=0; i<numParticles; i++) {
    particles[i] = new Particle(
        int(random(width)),
        int(random(height)),
        new PVector(int(random(5)), int(random(5))),
        particleColors[int(random(particleColors.length))]
    );
  }
}

void draw() {
  background(currentBackground);
  for (Particle p : particles) {
    p.draw();
    p.update();
  }
}

