part of table;

class Grille {
  int width;
  int height;

  var cells = new Cells();

  Grille(this.width, this.height) {
    var cell;
    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        cell = new Cell(x, y);
        cells.add(cell);
      }
    }
  }
}