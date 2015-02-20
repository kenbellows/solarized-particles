(function() {
  var stage = document.getElementById('stage'),
      ctx   = stage.getContext('2d'),
      stageWidth  = 1200,
      stageHeight = 800;
  stage.width  = stageWidth,
  stage.height = stageHeight;

  var SOLARIZED = [
    { r: 0,   g: 43,  b: 54  }, // brblack
    { r: 7,   g: 54,  b: 66  }, // black
    { r: 88,  g: 110, b: 117 }, // brgreen
    { r: 101, g: 123, b: 131 }, // bryellow
    { r: 131, g: 148, b: 150 }, // brblue
    { r: 147, g: 161, b: 161 }, // brcyan
    { r: 238, g: 232, b: 213 }, // white
    { r: 253, g: 246, b: 227 }, // brwhite
    { r: 181, g: 137, b: 0   }, // yellow
    { r: 203, g: 75,  b: 22  }, // brred
    { r: 220, g: 50,  b: 47  }, // red
    { r: 211, g: 54,  b: 130 }, // magenta
    { r: 108, g: 113, b: 196 }, // brmagenta
    { r: 38,  g: 139, b: 210 }, // blue
    { r: 42,  g: 161, b: 152 }, // cyan
    { r: 133, g: 153, b: 0   }, // green
  ];

  ctx.fillStyle = '#002b36';
  ctx.fillRect(0, 0, stageWidth, stageHeight);

  function drawParticle(x, y, r, style) {
    ctx.save();
    ctx.fillStyle = style;
    ctx.beginPath();
    ctx.arc(x, y, r, Math.PI*2, false);
    ctx.fill();
    ctx.restore();
  }

  for (var i=0; i<1000; i++) {
    var x     = stageWidth  * Math.random(),
        y     = stageHeight * Math.random(),
        color = SOLARIZED[Math.floor(Math.random()*SOLARIZED.length)];
    drawParticle(x, y, 2.5, 'rgba('+[color.r,color.g,color.b,'0.5'].join(',')+')');
  }
})();
