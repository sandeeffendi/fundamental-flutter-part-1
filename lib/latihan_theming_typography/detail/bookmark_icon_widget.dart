import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_icon_provider.dart';
import 'package:design_ui_dengan_widget/provider/bookmark_list_provider.dart';
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
    final bookmarkTourismList = context.read<BookmarkListProvider>();

    /// Future microtask implement asycn proccess on init State
    Future.microtask(() {
      /// Check if BookmarkList if is not empty
      final tourismInList = bookmarkTourismList.checkBookmarkList(
        widget.tourism,
      );

      /// Bool setter for bookmarkIcon value from tourismInList
      bookmarkIconList.setIsBookmarked = tourismInList;
    });

    super.initState();
  }

  _onTapBookMark(Tourism value) {
    final bookmarkIconList = context.read<BookmarkIconProvider>();
    final bookmarkTourismList = context.read<BookmarkListProvider>();
    final isBookmarked = bookmarkIconList.isBookmarked;

    if (!isBookmarked) {
      bookmarkTourismList.addBookmarkList(value);
    } else {
      bookmarkTourismList.removeBookmarkList(value);
    }

    bookmarkIconList.isBookmarked == !isBookmarked;
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        final bookmarkIconList = context.read<BookmarkIconProvider>();
        final bookmarkTourismList = context.read<BookmarkListProvider>();
        final isBookmarked = bookmarkIconList.isBookmarked;

        if (!isBookmarked) {
          bookmarkTourismList.addBookmarkList(widget.tourism);
        } else {
          bookmarkTourismList.removeBookmarkList(widget.tourism);
        }

        bookmarkIconList.setIsBookmarked = !isBookmarked;
      },
      icon: Icon(
        context.watch<BookmarkIconProvider>().isBookmarked
            ? Icons.bookmark
            : Icons.bookmark_outline,
      ),
    );
  }
}
