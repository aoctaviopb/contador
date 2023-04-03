import 'package:flutter/material.dart';

class FuncContadorNotifier extends ChangeNotifier {
  int cont = 0;

  void counter() {
    cont = cont + 1;
    notifyListeners();
  }

  void reset() {
    cont = 0;
    notifyListeners();
  }
}
