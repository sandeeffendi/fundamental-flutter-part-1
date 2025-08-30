import 'package:design_ui_dengan_widget/latihan_theming_typography/data/api/api_services.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/my_tourism_app.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/detail/details_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/main/main_screen.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_list_provider.dart';
import 'package:design_ui_dengan_widget/provider/bottom_navigation_provider.dart';
import 'package:design_ui_dengan_widget/provider/detail/tourism_detail_provider.dart';
import 'package:design_ui_dengan_widget/provider/home/tourism_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(
    MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => BottomNavigationProvider()),
        ChangeNotifierProvider(create: (context) => BookmarkListProvider()),
        Provider(create: (context) => ApiServices()),
        ChangeNotifierProvider(
        create: (context) => TourismListProvider(context.read<ApiServices>()),
        ),
        ChangeNotifierProvider(
          create: (context) =>
              TourismDetailProvider(context.read<ApiServices>()),
        ),
      ],
      child: MyTourismApp(),
    ),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      /// Initial route to main screen
      initialRoute: NavigationRoutes.mainRoute.name,
      routes: {
        /// Main screen route
        NavigationRoutes.mainRoute.name: (context) => MainScreen(),

        /// Detail screen route
        /// Receive passed argument from TourismCard that build on home screen
        NavigationRoutes.detailRoute.name: (context) => DetailsScreen(
          tourismId: ModalRoute.of(context)?.settings.arguments as int,
        ),
      },
    );
  }
}
