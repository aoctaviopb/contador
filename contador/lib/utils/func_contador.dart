import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final contadorProvider = StateProvider((ref) {
  return 0;
});

final funContNotProvider =
    StateNotifierProvider<FuncContadorNotifier, int>((ref) {
  return FuncContadorNotifier();
});

class FuncContadorNotifier extends StateNotifier<int> {
  FuncContadorNotifier() : super(0);

  void counter() {
    state = state + 1;
  }

  void reset() {
    state = 0;
  }

}
