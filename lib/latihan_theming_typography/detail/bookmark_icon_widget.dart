import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_icon_provider.dart';
import 'package:design_ui_dengan_widget/provider/local_database/local_database_provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class BookmarkIconWidget extends StatefulWidget {
  final Tourism tourism;

  const BookmarkIconWidget({super.key, required this.tourism});

  @override
  State<BookmarkIconWidget> createState() => _BookmarkIconWidgetState();
}

class _BookmarkIconWidgetState extends State<BookmarkIconWidget> {
  @override
  void initState() {
    /// BookmarkIconProvider Instance
    final bookmarkIconList = context.read<BookmarkIconProvider>();

    /// BookmarkListProvider Instance
    final bookmarkTourismList = context.read<LocalDatabaseProvider>();

    /// Future microtask implement asycn proccess on init State
    Future.microtask(() {
      /// Check if BookmarkTourismList is not empty
      final value = bookmarkTourismList.checkItemBookmark(widget.tourism.id);

      /// Bool setter for bookmarkIcon value from tourismInList
      bookmarkIconList.setIsBookmarked = value;
    });

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () async {
        final localDatabaseProvider = context.read<LocalDatabaseProvider>();
        final bookmarkIconProvider = context.read<BookmarkIconProvider>();
        final isBookmarked = bookmarkIconProvider.isBookmarked;

        if (!isBookmarked) {
          await localDatabaseProvider.saveTourism(widget.tourism);
        } else {
          await localDatabaseProvider.removeTourismById(widget.tourism.id);
        }

        bookmarkIconProvider.setIsBookmarked = !isBookmarked;
        localDatabaseProvider.loadAllTourism();
      },
      icon: Icon(
        context.watch<BookmarkIconProvider>().isBookmarked
            ? Icons.bookmark
            : Icons.bookmark_outline,
      ),
    );
  }
}
