import 'package:flutter/cupertino.dart';

class CupertinoCategoryScreen extends StatelessWidget {
  final String selectedCategory;

  const CupertinoCategoryScreen({super.key, required this.selectedCategory});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(middle: Text(selectedCategory)),
      child: Center(child: Text('$selectedCategory screen')),
    );
  }
}
