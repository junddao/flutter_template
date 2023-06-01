
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

// A Counter implemented and tested with Dart only (no dependency on Flutter)

// We declared a provider globally, and we will use it in two tests, to see
// if the state correctly resets to `0` between tests.

final counterProvider = StateProvider((ref) => 0);

// Using mockito to keep track of when a provider notify its listeners
class Listener<T> extends Mock {
  void call(T? previous, T value);
}

final myChangeNotifierProvider = ChangeNotifierProvider<MyChangeNotifier>((ref) {
  return MyChangeNotifier();
});

class MyChangeNotifier extends ChangeNotifier {
  int _counter = 0;

  int get counter => _counter;

  void incrementCounter() {
    _counter++;
    notifyListeners();
  }
}


void main() {
  test('defaults to 0 and notify listeners when value changes', () {
    final ref = ProviderContainer();
    final notifier = ref.read(myChangeNotifierProvider);
    final listener = Listener<int>();

    // Add listener to the notifier.
    notifier.addListener(() {
      listener(null, notifier.counter);
    });

    // Trigger the `incrementCounter` method and verify that the counter has been incremented.
    notifier.incrementCounter();
    expect(notifier.counter, 1);

    // Verify that the listener has been called once.
    verify(listener(null, 1)).called(1);

    // Remove the listener from the notifier.
    notifier.removeListener(() {
      listener(null, notifier.counter);
    });
  });
}