import 'package:design_ui_dengan_widget/latihan_theming_typography/models/tourism.dart';
import 'package:flutter/material.dart';

class BookmarkIconWidget extends StatefulWidget {
  final Tourism tourism;

  const BookmarkIconWidget({super.key, required this.tourism});

  @override
  State<BookmarkIconWidget> createState() => _BookmarkIconWidgetState();
}

class _BookmarkIconWidgetState extends State<BookmarkIconWidget> {
  late bool _isBookmark;

  @override
  void initState() {
    final tourismInList = bookmarkTourismList.where(
      (element) => element.id == widget.tourism.id,
    );
    if (tourismInList.isNotEmpty) {
      _isBookmark = true;
    } else {
      _isBookmark = false;
    }

    super.initState();
  }

  void _onTapBookMark() {
    setState(() {
      if (_isBookmark) {
        bookmarkTourismList.removeWhere(
          (element) => element.id == widget.tourism.id,
        );
      } else if (!_isBookmark) {
        bookmarkTourismList.add(widget.tourism);
      }

      _isBookmark = !_isBookmark;
    });
  }

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        _onTapBookMark();
      },
      icon: Icon(_isBookmark ? Icons.bookmark : Icons.bookmark_outline),
    );
  }
}
