import 'package:design_ui_dengan_widget/latihan_inherited_widget/inherited_widget_homepage.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/my_tourism_app.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/screens/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyTourismApp());
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
