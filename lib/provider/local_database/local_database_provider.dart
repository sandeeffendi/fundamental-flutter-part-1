import 'package:design_ui_dengan_widget/latihan_theming_typography/data/local/local_database_service.dart';
import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';
import 'package:flutter/material.dart';

class LocalDatabaseProvider extends ChangeNotifier {
  final LocalDatabaseService _service;

  LocalDatabaseProvider(this._service);

  String? _message;
  String? get message => _message;

  List<Tourism>? _tourismList;
  List<Tourism>? get tourismList => _tourismList;

  Tourism? _tourism;
  Tourism? get tourism => _tourism;

  /// Save Data Method
  Future<void> saveTourism(Tourism value) async {
    try {
      final result = await _service.insertItem(value);

      final isError = result == 0;

      if (isError) {
        _message = 'Failed to save your data';
      } else {
        _message = 'Your data is saved';
      }
    } catch (e) {
      throw Exception('Caught an error. Failed to save your data');
    } finally {
      notifyListeners();
    }
  }

  /// Load All Data Method
  Future<void> loadAllTourism() async {
    try {
      final data = await _service.getAllItem();

      _tourismList = data;
      _tourism = null;
      _message = 'Loaded all your data';
    } catch (e) {
      _message = 'Failed to load your data, ${e.toString()}';
    } finally {
      notifyListeners();
    }
  }

  /// Get Data By ID Method
  Future<void> getTourismById(int id) async {
    try {
      _tourism = await _service.getItemById(id);
      _message = 'Loaded item with ID:$id';
    } catch (e) {
      _message = 'Failed to load item with ID:$id';
    } finally {
      notifyListeners();
    }
  }

  /// Remove Data by  ID Method
  Future<void> removeTourismById(int id) async {
    try {
      await _service.deleteItem(id);

      _message = 'Succesfully deleted item';
    } catch (e) {
      _message = 'Failed to delete item';
    } finally {
      notifyListeners();
    }
  }

  bool checkItemBookmark(int id) {
    final isSameTourism = _tourism?.id == id;
    return isSameTourism;
  }
}
