import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/tourism_card.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_list_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarkTourismList extends StatelessWidget {
  const BookmarkTourismList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<BookmarkListProvider>(
        builder: (context, value, child) {
          /// Get Bookmark List from BookmarkListProvider instance
          final List<Tourism> bookmarkTourismList = value.bookmarkList;

          /// Return switch statement
          /// With bool argument check if bookmarTourismList is not empty
          return switch (bookmarkTourismList.isNotEmpty) {
            /// Return List View Builder
            /// With data from bookmarkTourisList if is not empty
            true => ListView.builder(
              itemCount: bookmarkTourismList.length,
              itemBuilder: (BuildContext context, int index) {
                return TourismCard(tourism: bookmarkTourismList[index]);
              },
            ),

            /// Return 'No Bookmarked' Text if bookmark list is empty
            _ => Center(
              child: Text(
                'No Bookmarked',
                style: Theme.of(context).textTheme.labelLarge,
              ),
            ),
          };
        },
      ),
    );
  }
}
