part of geo;

class Surface {
  num width, height; // in pixels

  CanvasRenderingContext2D context;

  Surface(canvas) {
    context = canvas.getContext("2d");
    width = canvas.width;
    height = canvas.height;
  }
}