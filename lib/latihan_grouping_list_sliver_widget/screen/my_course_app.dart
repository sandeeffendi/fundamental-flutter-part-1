import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/screen/learning_path_screen.dart';
import 'package:flutter/material.dart';

class MyCourseApp extends StatelessWidget {
  const MyCourseApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dicoding Course',
      theme: ThemeData(colorSchemeSeed: Colors.indigo),
      home: LearningPathScreen(),
    );
  }
}
