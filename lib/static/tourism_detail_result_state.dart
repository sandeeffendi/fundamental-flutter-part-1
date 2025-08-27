import 'package:design_ui_dengan_widget/latihan_theming_typography/data/models/tourism.dart';

sealed class TourismDetailResultState {}

class TourismDetailNoneState extends TourismDetailResultState {}

class TourismDetailLoadingState extends TourismDetailResultState {}

class TourismDetailLoadedState extends TourismDetailResultState {
  final Tourism data;

  TourismDetailLoadedState(this.data);
}

class TourismDetailErrorState extends TourismDetailResultState {
  final String error;

  TourismDetailErrorState(this.error);
}
