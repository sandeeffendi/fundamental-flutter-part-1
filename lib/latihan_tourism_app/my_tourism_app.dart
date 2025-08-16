import 'package:design_ui_dengan_widget/latihan_tourism_app/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/screens/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_tourism_app/screens/home_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyTourismApp extends StatelessWidget {
  const MyTourismApp({super.key});

  @override
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
