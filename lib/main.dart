import 'package:design_ui_dengan_widget/latihan_inherited_widget/inherited_widget_homepage.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(InheritedWidgetHomepage());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Inherited Widget Homepage',
      home: InheritedWidgetHomepage(),
    );
  }
}
