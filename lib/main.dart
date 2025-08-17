import 'package:design_ui_dengan_widget/latihan_grouping_list_sliver_widget/screen/my_course_app.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/my_tourism_app.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyCourseApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: NavigationRoutes.homeRoute.name,
      routes: {
        NavigationRoutes.homeRoute.name: (context) => HomeScreen(),
        NavigationRoutes.detailRoute.name: (context) => DetailsScreen(
          tourism: ModalRoute.of(context)?.settings.arguments as Tourism,
        ),
      },
    );
  }
}
