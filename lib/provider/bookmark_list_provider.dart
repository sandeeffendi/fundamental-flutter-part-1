import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:flutter/widgets.dart';

class BookmarkListProvider extends ChangeNotifier {
  final List<Tourism> _bookmarkList = [];

  List<Tourism> get bookmarkList => _bookmarkList;

  /// Add item to bookmark list method
  void addBookmarkList(Tourism value) {
    _bookmarkList.add(value);
    notifyListeners();
  }

  /// Remove item from bookmark list method
  void removeBookmarkList(Tourism value) {
    _bookmarkList.removeWhere((element) => element.id == value.id);
    notifyListeners();
  }

  /// Check if bookmark is not empty
  bool checkBookmarkList(Tourism value) {
    final tourismInList = _bookmarkList.where(
      (element) => element.id == value.id,
    );
    return tourismInList.isNotEmpty;
  }
}
