import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';

sealed class TourismListResultState {}

class TourismListNoneState extends TourismListResultState {}

class TourismListLoadingState extends TourismListResultState {}

class TourismListErrorState extends TourismListResultState {
  String error;

  TourismListErrorState(this.error);
}

class TourismListLoadedState extends TourismListResultState {
  List<Tourism> data;
  TourismListLoadedState(this.data);
}
