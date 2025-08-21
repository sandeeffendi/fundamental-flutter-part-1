import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/my_tourism_app.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/main_screen.dart';
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
      initialRoute: NavigationRoutes.mainRoute.name,
      routes: {
        NavigationRoutes.mainRoute.name: (context) => MainScreen(),
        NavigationRoutes.detailRoute.name: (context) => DetailsScreen(
          tourism: ModalRoute.of(context)?.settings.arguments as Tourism,
        ),
      },
    );
  }
}
