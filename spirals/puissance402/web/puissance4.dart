import 'dart:html';

import 'package:puissance4/puissance4.dart';

main() {
  // model
  var grille = new SquareGrille(3);
  var cell23 = grille.cell(1, 2);
  assert(cell23.row == 1 && cell23.column == 2);
  //for (Cell c in grille.cells) assert(c.text == null);
  assert(grille.cells.every((c) => c.text == null));
  // view
  new Board(grille, querySelector('#canvas')).draw();
}



