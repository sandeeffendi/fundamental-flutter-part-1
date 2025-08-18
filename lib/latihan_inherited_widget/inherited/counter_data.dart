import 'package:flutter/cupertino.dart';

class CounterData extends InheritedWidget {
  final int counter;

  const CounterData({super.key, required this.counter, required super.child});

  static CounterData? of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<CounterData>();
  }

  @override
  bool updateShouldNotify(CounterData oldWidget) {
    return oldWidget.counter != counter;
  }
}
