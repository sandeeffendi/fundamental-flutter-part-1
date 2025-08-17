import 'package:design_ui_dengan_widget/latihan_cupertino_app/screens/cupertino_feeds_screen.dart';
import 'package:design_ui_dengan_widget/latihan_cupertino_app/screens/cupertino_search_screen.dart';
import 'package:design_ui_dengan_widget/latihan_cupertino_app/screens/cupertino_settings_page.dart';
import 'package:flutter/cupertino.dart';

class CupertinoHomePage extends StatelessWidget {
  const CupertinoHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoTabScaffold(
      tabBar: CupertinoTabBar(
        items: const [
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.news),
            label: 'Feeds',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(CupertinoIcons.settings),
            label: 'Settings',
          ),
        ],
      ),
      tabBuilder: (context, index) {
        return switch (index) {
          1 => const CupertinoSearchScreen(),
          2 => const CupertinoSettingsPage(),
          _ => const CupertinoFeedsScreen(),
        };
      },
    );
  }
}
