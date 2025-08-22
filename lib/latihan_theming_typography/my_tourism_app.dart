import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/main_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/theme/tourism_theme.dart';
import 'package:flutter/material.dart';

class MyTourismApp extends StatelessWidget {
  const MyTourismApp({super.key});

  @override
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My Tourism App',
      theme: TourismTheme.lightTheme,
      darkTheme: TourismTheme.darkTheme,
      themeMode: ThemeMode.system,

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
