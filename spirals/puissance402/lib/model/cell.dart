part of table;

class Cell {
  int row, column;
  String text;

  Grille grille;

  Cell(this.grille, this.row, this.column);

  bool intersects(num row, num column) {
    if (0 <= row    && row    < grille.height &&
        0 <= column && column < grille.width) {
      if (this.row == row && this.column == column) {
        return true;
      }
    }
    return false;
  }
}

class Cells {
  List<Cell> _list;

  Cells() {
    _list = new List<Cell>();
  }

  void add(Cell cell) {
    _list.add(cell);
  }

  Iterator get iterator => _list.iterator;

  bool every(bool f(Cell cell)) => _list.every(f);
}
