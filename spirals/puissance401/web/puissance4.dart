import 'dart:html';

import 'package:puissance4/model/table.dart';
import 'package:puissance4/view/geo.dart';

main() {
  // model
  var grille = new Grille(6, 7);
  for (Cell c in grille.cells) assert(c.text == null);
  // view
  var canvas = querySelector('#canvas');
  new Surface(canvas);
}


