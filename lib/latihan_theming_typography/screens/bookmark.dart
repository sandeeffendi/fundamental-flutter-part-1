import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/tourism_card.dart';
import 'package:flutter/material.dart';

class BookmarkTourismList extends StatelessWidget {
  const BookmarkTourismList({super.key});

  @override
  Widget build(BuildContext context) {
    final tourism = bookmarkTourismList;

    return Scaffold(
      body: ListView.builder(
        itemCount: bookmarkTourismList.length,
        itemBuilder: (BuildContext context, int index) {
          return TourismCard(tourism: tourism[index]);
        },
      ),
    );
  }
}
