(function() {
  var canvas = document.getElementById('canvas'),
      ctx    = canvas.getContext('2d'),
      W = 500, H = 500;
  canvas.width=W;
  canvas.height=H;
  
  function drawParticle(x, y, color) {
    ctx.save();
    ctx.fillColor = color;
    ctx.beginPath();
    ctx.arc(x, y, r, Math.PI*2, false);
    ctx.fill();
    ctx.restore();
  }

  for (var i=0; i<10; i++) drawParticle(W*Math.random(), H*Math.random(), '#777');
});
