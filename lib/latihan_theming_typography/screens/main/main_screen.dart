import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/bookmark/bookmark_screen.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home/home_screen.dart';
import 'package:design_ui_dengan_widget/provider/bottom_navigation_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MainScreen extends StatelessWidget {
  MainScreen({super.key});

  final List<Widget> _pages = [
    /// Home screen
    HomeScreen(),

    /// Bookmark screen
    BookmarkTourismList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BottomNavigationProvider>(
        builder: (context, value, child) {
          return _pages[value.indexBottomBar];
        },
      ),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: context.watch<BottomNavigationProvider>().indexBottomBar,
        onTap: (index) {
          context.read<BottomNavigationProvider>().setIndexBottomBar = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'home',
            tooltip: 'home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.bookmark),
            label: 'bookmark',
            tooltip: 'bookmark',
          ),
        ],
      ),
    );
  }
}
