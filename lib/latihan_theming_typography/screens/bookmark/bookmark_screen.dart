import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/routes/navigation_routes.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/screens/home/tourism_card.dart';
import 'package:design_ui_dengan_widget/provider/local_database/local_database_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarkTourismList extends StatefulWidget {
  const BookmarkTourismList({super.key});

  @override
  State<BookmarkTourismList> createState() => _BookmarkTourismListState();
}

class _BookmarkTourismListState extends State<BookmarkTourismList> {
  @override
  void initState() {
    Future.microtask(() {
      if (!mounted) return;
      context.read<LocalDatabaseProvider>().loadAllTourism();
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<LocalDatabaseProvider>(
        builder: (context, value, child) {
          /// Get Bookmark List from BookmarkListProvider instance
          final List<Tourism> bookmarkTourismList = value.tourismList ?? [];

          /// Return switch statement
          /// With bool argument check if bookmarTourismList is not empty
          return switch (bookmarkTourismList.isNotEmpty) {
            /// Return List View Builder
            /// With data from bookmarkTourisList if is not empty
            true => ListView.builder(
              itemCount: bookmarkTourismList.length,
              itemBuilder: (BuildContext context, int index) {
                /// Initiating tourism from bookmarkTourismList
                final tourism = bookmarkTourismList[index];

                return TourismCard(
                  tourism: bookmarkTourismList[index],
                  onTap: () => Navigator.pushNamed(
                    context,
                    NavigationRoutes.detailRoute.name,
                    arguments: tourism.id,
                  ),
                );
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
