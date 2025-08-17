import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CupertinoSearchScreen extends StatelessWidget {
  const CupertinoSearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text('Search screen')),
      child: Center(child: Text('Search screen')),
    );
  }
}
