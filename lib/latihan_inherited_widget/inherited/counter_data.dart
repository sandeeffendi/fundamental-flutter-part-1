import 'package:flutter/cupertino.dart';

class CounterData extends InheritedWidget {
  final int counter;
  final Widget child;

  CounterData({super.key, required this.counter, required this.child});

  @override
  bool updateShouldNotify(covariant InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    throw UnimplementedError();
  }
}
