var stage = document.getElementById('stage'),
    ctx   = stage.getContext('2d'),
    stageWidth  = 1200,
    stageHeight = 800;
stage.width  = stageWidth,
stage.height = stageHeight;

ctx.fillStyle = "#002b36";
ctx.fillRect(0, 0, stageWidth, stageHeight);

