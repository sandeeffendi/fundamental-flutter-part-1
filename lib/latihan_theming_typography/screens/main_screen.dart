import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/bookmark.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home_screen.dart';
import 'package:flutter/material.dart';

class MainScreen extends StatefulWidget {
  const MainScreen({super.key});

  @override
  State<MainScreen> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MainScreen> {
  int _indexSelectedBottomBar = 0;

  final List<Widget> _pages = [
    /// Home screen
    HomeScreen(),

    /// Bookmark screen
    BookmarkTourismList(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_indexSelectedBottomBar],

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _indexSelectedBottomBar,
        onTap: (index) {
          setState(() {
            _indexSelectedBottomBar = index;
          });
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
