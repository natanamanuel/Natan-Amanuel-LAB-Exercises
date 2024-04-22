import 'package:flutter/foundation.dart';
import 'package:riverpod/riverpod.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class CounterNotifier extends ChangeNotifier {
  int _count = 0;

  int get count => _count;

  void increment() {
    _count++;
    notifyListeners();
  }

  void decrement() {
    _count--;
    notifyListeners();
  }
}
