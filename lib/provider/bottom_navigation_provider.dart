import 'package:flutter/material.dart';

class BottomNavigationProvider extends ChangeNotifier {
  int _indexBottomBar = 0;

  int get indexBottomBar => _indexBottomBar;

  set setIndexBottomBar(int value) {
    _indexBottomBar = value;

    notifyListeners();
  }
}
