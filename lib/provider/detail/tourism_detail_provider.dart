import 'package:design_ui_dengan_widget/latihan_theming_typography/data/api/api_services.dart';
import 'package:design_ui_dengan_widget/static/tourism_detail_result_state.dart';
import 'package:design_ui_dengan_widget/static/tourism_list_result_state.dart';
import 'package:flutter/material.dart';

class TourismDetailProvider extends ChangeNotifier {
  final ApiServices _apiServices;

  TourismDetailProvider(this._apiServices);

  TourismDetailResultState _resultState = TourismDetailNoneState();

  TourismDetailResultState get resultState => _resultState;

  Future<void> fetchTourismProvider(int id) async {
    try {
      final result = await _apiServices.getDetailList(id);

      _resultState = TourismDetailNoneState();
      notifyListeners();

      if (result.error) {
        _resultState = TourismDetailErrorState(result.message);
        notifyListeners();
      } else {
        _resultState = TourismDetailLoadedState(result.place);
        notifyListeners();
      }
    } on Exception catch (e) {
      _resultState = TourismDetailErrorState(e.toString());
      notifyListeners();
    }
  }
}
