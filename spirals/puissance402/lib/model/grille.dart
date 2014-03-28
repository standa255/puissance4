part of table;

class Grille {
  int width;  // in columns
  int height; // in rows

  var cells = new Cells();

  Grille(this.width, this.height) {
    var cell;
    for (var x = 0; x < width; x++) {
      for (var y = 0; y < height; y++) {
        cell = new Cell(this, x, y);
        cells.add(cell);
      }
    }
  }

  Cell cell(int row, int column) {
    if (0 <= row && row < height && 0 <= column && column < width) {
      for (Cell cell in cells) {
        if (cell.intersects(row, column)) {
          return cell;
        }
      }
    }
    return null;
  }
}