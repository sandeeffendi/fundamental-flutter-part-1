import 'package:design_ui_dengan_widget/latihan_cupertino_app/routes/cupertino_routes.dart';
import 'package:design_ui_dengan_widget/latihan_cupertino_app/screens/cupertino_category_screen.dart';
import 'package:flutter/cupertino.dart';
import 'screens/cupertino_home_page.dart';

class MyCupertinoApp extends StatelessWidget {
  const MyCupertinoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      title: 'My Cupertino App',
      theme: const CupertinoThemeData(primaryColor: CupertinoColors.systemCyan),
      initialRoute: CupertinoNavigationRoutes.homeRoute.name,
      routes: {
        CupertinoNavigationRoutes.homeRoute.name: (context) =>
            CupertinoHomePage(),
        CupertinoNavigationRoutes.category.name: (context) =>
            CupertinoCategoryScreen(
              selectedCategory:
                  ModalRoute.of(context)?.settings.arguments as String,
            ),
      },
    );
  }
}
